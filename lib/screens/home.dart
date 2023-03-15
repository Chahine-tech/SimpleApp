import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile/components/default_button.dart';
import 'package:mobile/screens/auth.dart';
import 'package:mobile/screens/web_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const AuthScreen()),
                  (route) => false);
            },
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           DefaultButton(
            color: Colors.purple, press: () async {
              Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => WebViewApp()));
            }
           )
         ],
        )
        )
    );
  }
}