import 'package:flutter/material.dart';
import 'dart:math';

class AnimationSeven extends StatefulWidget {
  const AnimationSeven({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimationSevenState createState() => _AnimationSevenState();
}

class _AnimationSevenState extends State<AnimationSeven>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _animation;
  Color _currentColor = Colors.blue;
  double widthCircle = 200;
  double heightCircle = 200;
  bool isBig = true;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
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
        } else {
          widthCircle--;
          heightCircle--;
        }
        if (widthCircle >= 200.5 || widthCircle <= 150) {
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
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
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
                  shape: BoxShape.circle,
                  color: Colors.deepOrange,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        blurRadius: 20,
                        spreadRadius: 10,
                        offset: const Offset(0, 5))
                  ]),
              child: Center(
                child: AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    return Container(
                      width: heightCircle,
                      height: widthCircle,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _animation.value,
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
