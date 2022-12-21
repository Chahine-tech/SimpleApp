import 'package:flutter/material.dart';
import 'package:mobile/components/default_button.dart';
import 'package:mobile/screens/google_sign_in.dart';
import 'package:mobile/screens/otp.dart';
import 'package:provider/provider.dart';


class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
   final _formKey = GlobalKey<FormState>();
   final TextEditingController _controller = TextEditingController();
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
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Phone',
                ),
                controller: _controller,
              ),
            ),
            ),
            ),
            const SizedBox(height: 10),
            DefaultButton(color: Colors.purple, press: () async {
                  print(_controller.text);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OTPScreen(phone: _controller.text)));
            }),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              final provider = Provider.of<GoogleSignInProviders>(context, listen: false);
              provider.googleLogin();
            }
            , child: const Text('Sign up with Google')),

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