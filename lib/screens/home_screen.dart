import 'package:flutter/material.dart';
import '../widgets/title_text.dart';
import '../widgets/sign_in_button.dart';
import '../widgets/optional_login_buttons.dart';
import '../widgets/custom_form_field.dart';
import '../widgets/sign_up_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // let me show you how to calulate the exact height of the screen(that we can use excluding top status bar and bottom navigation bar)

    // this is the total height including top and bottom bars
    final totalHeight = MediaQuery.of(context).size.height;
    final availableHeight =
        totalHeight -
        (MediaQuery.of(context).padding.top +
            MediaQuery.of(context).padding.bottom
        // top padding => status bar, bottom padding => navigation bar
        // if we exclude those from total height, we get the exact height of the screen we can use.
        );
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: availableHeight,
        padding: const EdgeInsets.symmetric(horizontal: 34),
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        // see that.
        // now let's start
        // for that overflow.
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 80),
              //
              // ------ title
              //
              TitleText(),
              const SizedBox(height: 50),
              //
              // ----- login form
              //
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Login to your account',
                  textScaler: TextScaler.linear(1.2),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              //
              // ------ email or phone field
              //
              CustomFormField(hintText: 'Email or Phone', obscureText: false),
              const SizedBox(height: 18),
              //
              // --------- password field
              //
              CustomFormField(hintText: 'Password', obscureText: true),
              const SizedBox(height: 18),
              //
              //-------- forget password link
              //
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                  ),
                ),
              ),
              const SizedBox(height: 18),
              //
              // ---------action button
              //
              SignInButton(),
              //
              // ------- optional login
              //
              const SizedBox(height: 40),
              Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text('OR'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              const SizedBox(height: 40),
              //--- optional icons (Google, Facebook etc.)
              // for this we can use images, or we can use this package called font_awesome.
              // let' import the package.
              // let's export the widgets.
              OptionalLoginButtons(),
              const SizedBox(height: 100),
              //
              // -------- new user signUp option
              //
              SignUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}
