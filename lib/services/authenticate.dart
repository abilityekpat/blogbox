import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:news/widgets/toast.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signInAnonymously() async {
    try {
      UserCredential result = await signInAnonymously();
      User? user = result.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<bool> signInWithEmailPassword(String email, String password) async {
    try {
      dynamic user = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return true;
    } catch (e) {
      MyToast.errorToast(e.toString());
    }
    return false;
  }

  Future signUpWithEmailAndPassword(String email, String password) async {
    log(email);
    log(password);
    try {
      dynamic user = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      print(user);
      return user;
    } catch (e) {
      MyToast.errorToast(e.toString());
      return MyToast;

      print(e.toString());
      return null;
    }
  }
}
