import 'package:flutter/material.dart';
import 'dart:math';

class AnimationEight extends StatefulWidget {
  const AnimationEight({super.key});

  @override
  _AnimationEightState createState() => _AnimationEightState();
}

class _AnimationEightState extends State<AnimationEight>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _animation;
  Color _currentColor = Colors.blue;
  double widthCircle = 200;
  double heightCircle = 200;
  bool isBig = true;
  double borderRadius = 30;
  double borderWidth = 2;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation = ColorTween(begin: _currentColor, end: randomColor())
        .animate(_controller);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _currentColor = _animation.value!;
        _controller.reset();
        _animation = ColorTween(
          begin: _currentColor,
          end: randomColor(),
        ).animate(_controller);
        _controller.forward();
      }
    });
    _controller.addListener(() {
      setState(() {
        if (isBig) {
          widthCircle++;
          heightCircle++;
          borderRadius +=3;
          borderWidth ++;
        } else {
          widthCircle--;
          heightCircle--;
          borderRadius -=3;
          borderWidth --;
        }
        if (widthCircle >= 250 || widthCircle <= 180) {
          isBig = !isBig;
        }
      });
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Color randomColor() {
    final random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation 7'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (BuildContext context, Widget? child) {
            return Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: _animation.value,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.7),
                    blurRadius: 20,
                    spreadRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
                borderRadius: BorderRadius.circular(borderRadius),
                border: Border.all(width: 2, color: Colors.black),
              ),
            );
          },
        ),
      ),
    );
  }
}
