import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tugas2kelompok3/view/main.dart';
import 'package:tugas2kelompok3/view/ren.dart';
import 'view/homepage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final auth = FirebaseAuth.instance;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void loginUser(context) async {
    try {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Center(
                child: CircularProgressIndicator(),
              ),
            );
          });
      await auth
          .signInWithEmailAndPassword(
              email: email.text, password: password.text)
          .then((value) async {
        await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                  title: Text("Login"), content: Text("Login Successfully"));
            });
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
            (route) => false);
      });
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
                title: Text("Login Failed"), content: Text("Please Re-login"));
          });
    }
  }

  void registerUser(context) async {
    try {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Center(
                child: CircularProgressIndicator(),
              ),
            );
          });
      await auth
          .createUserWithEmailAndPassword(
              email: email.text, password: password.text)
          .then((value) async {
        await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                  title: Text("Register"),
                  content: Text("Register Successfully"));
            });
        Navigator.push(context, MaterialPageRoute(builder: (c) => Login()));
      });
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
                title: Text("Registration Failed!"),
                content: Text("Please Re-register"));
          });
    }
  }

  void signOut(context) async {
    await auth.signOut();
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text("Sign Out"), content: Text("Sign Out Successfully"));
        });
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => Login()), (route) => false);
  }
}
