import 'package:flutter/material.dart';
import 'package:sapa7_app/components/rounded_button.dart';
import 'package:sapa7_app/screens/login_screen.dart';
import 'package:sapa7_app/screens/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                'Sapa7',
                style: TextStyle(
                    shadows: [
                      Shadow(
                        color: Colors.black38,
                        blurRadius: 10.0,
                        offset: Offset(2.0, 2.0),
                      )
                    ],
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    color: Colors.blueAccent),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            RoundedButton(
              color: Colors.blueAccent,
              text: 'Log In',
              onPressed: () {
                 Navigator.pushNamed(context, LogInScreen.id);
              },
            ),
            RoundedButton(
              text: 'Register',
              color: Colors.blueAccent,
              onPressed: () {
                 Navigator.pushNamed(context, RegisterScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
