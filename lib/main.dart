import 'package:flutter/material.dart';
import 'package:sapa7_app/screens/welcome_screen.dart';
import 'package:sapa7_app/screens/login_screen.dart';
import 'package:sapa7_app/screens/register_screen.dart';
import 'package:sapa7_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LogInScreen.id: (context) => const LogInScreen(),
        RegisterScreen.id: (context) => const RegisterScreen(),
         HomeScreen.id : (context) => const HomeScreen(),
      },
    );
  }
}
