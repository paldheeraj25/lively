import 'package:firebase_auth/firebase_auth.dart';
import 'package:lively/resources/firebase_methods.dart';

class FirebaseRepository {
  FirebaseMethods firebaseMethods = FirebaseMethods();

  Future<FirebaseUser> getCurrentUser() => firebaseMethods.getCurrentUser();
}
