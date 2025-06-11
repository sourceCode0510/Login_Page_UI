import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './social_media_button.dart';

class OptionalLoginButtons extends StatelessWidget {
  const OptionalLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialMediaButton(
          icon: FaIcon(FontAwesomeIcons.google, color: Colors.red),
        ),
        const SizedBox(width: 20),
        SocialMediaButton(
          icon: const FaIcon(FontAwesomeIcons.facebook, color: Colors.blue),
        ),
        const SizedBox(width: 20),
        SocialMediaButton(
          icon: const FaIcon(FontAwesomeIcons.twitter, color: Colors.blue),
        ),
      ],
    );
  }
}
