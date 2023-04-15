import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.transparent,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              top: -100.0,
              left: -100.0,
              child: Container(
                height: 450,
                width: 300,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0XFF347fc4),
                ),
              ),
            ),
            const Center(
              child: Text(
                "eFITS",
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: "Merriweather",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: -200.0,
              right: -50.0,
              child: Container(
                height: 450,
                width: 400,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0XFF347fc4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
