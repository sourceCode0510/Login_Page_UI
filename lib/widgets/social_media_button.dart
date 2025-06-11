import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaButton extends StatelessWidget {
  final FaIcon icon;
  const SocialMediaButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: IconButton(onPressed: () {}, iconSize: 30, icon: icon),
    );
  }
}
