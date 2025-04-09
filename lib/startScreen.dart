import 'package:flutter/material.dart';
import 'GameScreen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // 🔹 Background
            Positioned.fill(
              child: Image.asset(
                'assets/background.gif',
                fit: BoxFit.cover,
              ),
            ),

            // 🔺 Title + Start Button
            Positioned(
              top: 80,
              left: 0,
              right: 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "JDM CAR GAME!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'RaceFont',
                      fontSize: 50,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(4, 4),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  // ✅ Start Button as Image
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GameScreen(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/start.png',
                      width: 350,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}