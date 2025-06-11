import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: const Text(
        'Source',
        textScaler: TextScaler.linear(3),
        style: TextStyle(
          fontWeight: FontWeight.w800,
          shadows: [Shadow(blurRadius: 6)],
        ),
      ),
    );
  }
}
