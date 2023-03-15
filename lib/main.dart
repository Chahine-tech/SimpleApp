import 'package:flutter/material.dart';
import 'package:mobile/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mobile/screens/google_sign_in.dart';
import 'package:mobile/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp( MaterialApp(
    home: App(),
  ));
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => GoogleSignInProviders(),
      child: MaterialApp(
        home: Wrapper(),
        navigatorObservers: [
          FirebaseAnalyticsObserver(analytics: analytics),
        ],
      ));
}

