import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobile/firebase_options.dart';
import 'package:mobile/screens/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/google_sign_in.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    home: App(),
  ));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create : (context) => GoogleSignInProviders(),
      child: const MaterialApp(
        home: AuthScreen(),
      ));
}
