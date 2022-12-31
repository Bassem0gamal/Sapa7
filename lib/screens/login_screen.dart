import 'package:flutter/material.dart';
import 'package:sapa7_app/components/rounded_button.dart';
import 'package:sapa7_app/screens/home_screen.dart';
import 'package:sapa7_app/constants.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  static String id = 'login_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
              height: 20.0,
            ),
            TextField(
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter your name'),
              onChanged: null,
            ),
            RoundedButton(
                text: 'Log In', color: Colors.blueAccent, onPressed: (){
                  Navigator.pushNamed(context, HomeScreen.id);
            }),
          ],
        ),
      ),
    );
  }
}
