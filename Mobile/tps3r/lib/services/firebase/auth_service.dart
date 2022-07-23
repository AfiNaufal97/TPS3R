import 'package:firebase_auth/firebase_auth.dart';
import 'package:tps3r/services/permission_service.dart';

class AuthService {
  var authFirebase = FirebaseAuth.instance;
  PermissionService permissionService = PermissionService();

  // User Register
  Future<UserCredential> createUserEmailPassword(String email, String password) async {
    UserCredential auth = await authFirebase.createUserWithEmailAndPassword(
        email: email, password: password);
    return auth;
  }


  // User Login
  Future<UserCredential> signEmailPassword(String email, String password)async{
    UserCredential login = await authFirebase.signInWithEmailAndPassword(email: email, password: password);
    return login;
  }

   // User Logout
  Future<void> logoutEmailPassword()async{
    await FirebaseAuth.instance.signOut();
  }
}
