import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
//register
  static Future register(
    String phoneNumber,
    String password,
  ) async {
    FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: phoneNumber,
      password: password,
    );
  }

//login
  static Future login(String email, String password, context) async {
    FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

//logout

  static Future logOut() async {
    FirebaseAuth.instance.signOut();
  }

// reset password
  static Future resetPassword(String email) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

//email veryfication

  static Future phoneNumber(dynamic code) async {
    await FirebaseAuth.instance.verifyPasswordResetCode(code);
  }

// phone number auth
  static Future phoneNumberAuth(
    String phoneNumber,
    Function(PhoneAuthCredential) phoneAuthCredential,
    Function(PhoneAuthCredential) verificationCompleted,
    Function(FirebaseAuthException) verificationFailed,
    Function(String, int?) codeSent,
    Function(String) codeAutoRetrievalTimeout,
  ) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }
}
