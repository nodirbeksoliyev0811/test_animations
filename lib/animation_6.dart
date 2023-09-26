import 'package:flutter/material.dart';

class AnimationSix extends StatefulWidget {
  const AnimationSix({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimationSixState createState() => _AnimationSixState();
}

class _AnimationSixState extends State<AnimationSix> {
  int widthConteiner = 150;
  bool isTap=true;

  void _changePosition() {
      setState(() {
        isTap=!isTap;
        isTap?widthConteiner = 150:widthConteiner = 370;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation 6'),
      ),
      body: Stack(
        children: [
          Center(
            child: GestureDetector(
              onTap: () => _changePosition(),
              child: AnimatedContainer(
                width: widthConteiner.toDouble(),
                height: 100,
                color: Colors.blue,
                duration: const Duration(seconds: 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}