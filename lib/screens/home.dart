import 'package:flutter/material.dart';
import 'package:mobile/components/default_button.dart';

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
        title: const Text('Loading'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: const [
           Text('Coucou'),
           SizedBox(height: 20),
         ],
        )
        )
    );
  }
}