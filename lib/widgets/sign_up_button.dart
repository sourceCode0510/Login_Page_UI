import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('New User? ', style: TextStyle(fontWeight: FontWeight.bold)),
        Text(
          'Sign Up',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),
        ),
      ],
    );
  }
}
