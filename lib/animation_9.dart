import 'package:flutter/material.dart';

class AnimationNinth extends StatefulWidget {
  const AnimationNinth({super.key});

  @override
  State<AnimationNinth> createState() => _AnimationNinthState();
}

class _AnimationNinthState extends State<AnimationNinth> {
  bool _first = true;
  double _fontSize = 30;
  Color _color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animation 9'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 900),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: _fontSize,
                    color: _color,
                    fontWeight: FontWeight.bold),
                child: const Text('Hello Flutter World!'),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _fontSize = 45;
                      _color = Colors.red;
                      _first = !_first;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey,
                    ),
                    child: const Icon(Icons.play_arrow),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _fontSize = 30;
                      _color = Colors.blue;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey,
                    ),
                    child: const Icon(Icons.refresh),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}