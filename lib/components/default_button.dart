import 'package:flutter/material.dart';
import 'package:mobile/screens/event.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key, this.color = Colors.blue, this.press});
  final Color color;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton.icon(
            onPressed: press,
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