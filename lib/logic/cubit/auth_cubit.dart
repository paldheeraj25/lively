import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lively/resources/model/user.dart';
import 'package:lively/resources/repository/firebase_repository.dart';
import 'package:lively/resources/utils/utilities.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final FirebaseRepository firebaseRepository;

  AuthCubit({@required this.firebaseRepository}) : super(AuthInitial()) {
    isAuth();
  }

  // Sign In method.
  void signIn() async {
    print('log in initiated');
    emit(AuthLoading());
    firebaseRepository.signIn().then((FirebaseUser user) {
      print(user);
      if (user != null) {
        authenticatUser(user);
      } else {
        print("error");
        emit(AuthFailed());
      }
    });
  }

  // Sign Out method.
  void signOut() {}

  // Check Auth
  void isAuth() {
    //print("checking current user");
    firebaseRepository.getCurrentUser().then((user) {
      //print("performing auth check");
      print(user);
      if (user != null) {
        // instead
        //print("user added to db");
        String username = Utils.getUsername(user.email);
        User authUser = User(
            uid: user.uid,
            email: user.email,
            displayName: user.displayName,
            profilePhoto: user.photoUrl,
            username: username);
        emit(AuthSuccess(user: authUser));
      } else {
        emit(AuthFailed());
      }
    });
  }

  authenticatUser(FirebaseUser user) {
    firebaseRepository.authenticateUser(user).then((isNewUser) {
      if (isNewUser) {
        firebaseRepository.addUserToDb(user).then((value) {
          //print("user added to db");
          String username = Utils.getUsername(user.email);
          User authUser = User(
              uid: user.uid,
              email: user.email,
              displayName: user.displayName,
              profilePhoto: user.photoUrl,
              username: username);
          emit(AuthSuccess(user: authUser));
        });
      } else {
        //print('user found');
        String username = Utils.getUsername(user.email);
        User authUser = User(
            uid: user.uid,
            email: user.email,
            displayName: user.displayName,
            profilePhoto: user.photoUrl,
            username: username);
        emit(AuthSuccess(user: authUser));
      }
    });
  }
}
