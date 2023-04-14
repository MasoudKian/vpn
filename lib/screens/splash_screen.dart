import 'package:flutter/material.dart';
import 'package:vpn/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
    return Scaffold(
      body: SizedBox(
        child: Center(
          child: Image.asset(
            'assets/images/Logo.png',
            width: 150,
            height: 150,
          ),
        ),
      ),
    );
  }
}
