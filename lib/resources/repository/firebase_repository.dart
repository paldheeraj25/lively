import 'package:firebase_auth/firebase_auth.dart';
import 'package:lively/resources/methods/firebase_methods.dart';

class FirebaseRepository {
  FirebaseMethods _firebaseMethods = FirebaseMethods();

  // User sign in.
  Future<FirebaseUser> signIn() => _firebaseMethods.signIn();
  // Authenticat user.
  Future<bool> authenticateUser(FirebaseUser user) =>
      _firebaseMethods.authenticateUser(user);
  // Add userData to db.
  Future<void> addUserToDb(FirebaseUser user) =>
      _firebaseMethods.addUserToDb(user);
  // Get current user.
  Future<FirebaseUser> getCurrentUser() => _firebaseMethods.getCurrentUser();
}
