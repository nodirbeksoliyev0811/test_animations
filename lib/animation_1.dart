import 'dart:math';
import 'package:flutter/material.dart';

class AnimationOne extends StatefulWidget {
  const AnimationOne({Key? key}) : super(key: key);

  @override
  State<AnimationOne> createState() => _AnimationOneState();
}

class _AnimationOneState extends State<AnimationOne>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    animation = Tween<double>(begin: pi, end: pi*2).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.linear,
        reverseCurve: Curves.linear,
      ),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {});
    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation 1"),
      ),
      body: Center(
        child: Transform.rotate(
          angle: animation.value,
          child: Container(
            height: 150,
            width: 150,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
