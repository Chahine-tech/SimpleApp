import 'package:flutter/material.dart';
import 'package:mobile/components/default_button.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 25),
            const Text('Hello Again',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
            ),
            const SizedBox(height: 10),
            const Text('Welcome Back',
            style: TextStyle(
              fontSize: 20,
            ),
            ),
            const SizedBox(height: 50),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)
                ),
            child: const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
                ),
              ),
            ),
            ),
            ),
            const SizedBox(height: 10),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)
                ),
            child: const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                ),
              ),
            ),
            ),
            
            ),
            const SizedBox(height: 10),
            const DefaultButton(color: Colors.purple),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Not a member? ', style: TextStyle(
                  fontWeight: FontWeight.bold
                  ),
                ),
                Text('Register now!', style: TextStyle(
                color: Colors.blue,
                  fontWeight: FontWeight.bold
                  ),
                ),
              ],
            )
          ],
      ),
        )
      )
    );
  
  }
}