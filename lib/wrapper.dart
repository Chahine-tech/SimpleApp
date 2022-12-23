import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobile/screens/auth.dart';
import 'package:mobile/screens/home.dart';


class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  User? user;
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance
        .authStateChanges()
        .listen((event) => updateUserState(event));
  }

  updateUserState(event) {
    setState(() {
      user = event;
    });
  }
  
 @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (user == null) {
      return const AuthScreen();
    } else {
      return const Home();
    }
  }
}