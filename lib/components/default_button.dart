import 'package:flutter/material.dart';
import 'package:mobile/screens/event.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key, this.color = Colors.blue});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton.icon(
            onPressed: () { 
            Navigator.push(
              context,
               PageRouteBuilder(
                pageBuilder: (_, __, ___,) => const EventPage()
               )
            );
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              backgroundColor: color,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              shadowColor: Colors.black
            ),
            label: const Text('Submit'),
            icon: const Icon(Icons.handshake),
           
           ),
    );
  }
}