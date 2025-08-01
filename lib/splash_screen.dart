import 'dart:async';
import 'package:appfusion/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
    
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignUpScreen()), 
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 340,
                height: 260,
                decoration: const BoxDecoration(
                  color: Color(0xff2750E1),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(300),
                  ),
                ),
                child: const Image(
                  image: AssetImage('assets/logo1.png'),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 500,
                width: 355,
                decoration: const BoxDecoration(
                  color: Color(0xff2750E1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(300),
                  ),
                ),
                child: const Image(
                  image: AssetImage('assets/logo2.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
