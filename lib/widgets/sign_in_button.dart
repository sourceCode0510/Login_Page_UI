import 'package:flutter/material.dart';

// now let's modify this
// when the user taps on the button, it will show processing and then verified.
// let's convert it to a stateful widget
// so That's it for today....thanks for watching...like and subscribe please>>
class SignInButton extends StatefulWidget {
  const SignInButton({super.key});

  @override
  State<SignInButton> createState() => _SignInButtonState();
}

class _SignInButtonState extends State<SignInButton> {
  // for this emulation we don't actually need this _isloading.
  //

  String _buttonText = 'Sign In';
  // also some visuals
  Widget _prefixWidget = SizedBox();

  // now let's create the method
  void _changeStatus() async {
    // delay a little
    Future.delayed(const Duration(seconds: 1)).then((_) {
      // rebuild the widget
      setState(() {
        _buttonText = 'Processing';
        _prefixWidget = Padding(
          padding: const EdgeInsets.all(5.0),
          child: Transform.scale(
            scale: 0.5,
            child: const CircularProgressIndicator(color: Colors.white),
          ),
        );
      });
      // now for second stage, delay a little more
      Future.delayed(const Duration(seconds: 2)).then((_) {
        // rebuild the widget
        setState(() {
          _buttonText = 'Verified';
          _prefixWidget = Checkbox(
            value: true,
            onChanged: (_) {},
            fillColor: WidgetStatePropertyAll(Colors.indigo),
          );
        });
      });
    });
  }

  // now let's check first stage

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _changeStatus(),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _prefixWidget,
            Text(
              _buttonText,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
