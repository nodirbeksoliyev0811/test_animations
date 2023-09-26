import 'package:flutter/material.dart';
import 'dart:math';

class AnimationFour extends StatefulWidget {
  const AnimationFour({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimationFourState createState() => _AnimationFourState();
}

class _AnimationFourState extends State<AnimationFour> {
  Color _containerColor = Colors.blue;
  bool isTap = true;

  void _changeColor() {
    final random = Random();
    int colorValue = 0xFF000000 + random.nextInt(0x00FFFFFF);
    setState(() {
      _containerColor = Color(colorValue);
      isTap = !isTap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation 4"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: 250,
              height: 250,
              color: _containerColor,
              child: Center(
                child: Text(
                  isTap ? "This is\nFirst\nWidget" : "This is\nSecond\nWidget",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: _containerColor.withOpacity(0.4)),
              onPressed: _changeColor,
              child: const Text('Click here'),
            ),
          ],
        ),
      ),
    );
  }
}
