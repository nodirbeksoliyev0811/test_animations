import 'package:flutter/material.dart';

class AnimationFive extends StatefulWidget {
  const AnimationFive({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimationFiveState createState() => _AnimationFiveState();
}

class _AnimationFiveState extends State<AnimationFive> {
  Alignment _alignment = Alignment.topLeft;
  int widthConteiner = 100;
  Color colorConteiner = Colors.blue;
  Color colorConteiner2 = Colors.transparent;

  void _changePosition(Alignment alignment) {
    if (_alignment == Alignment.topLeft) {
      setState(() {
        widthConteiner = 150;
        _alignment = alignment;
        colorConteiner = Colors.transparent;
        colorConteiner2 = Colors.blue;
      });
      colorConteiner = Colors.transparent;
    } else {
      setState(() {
        widthConteiner = 100;
        _alignment = Alignment.topLeft;
        colorConteiner = Colors.blue;
        colorConteiner2 = Colors.transparent;
      });
      colorConteiner = Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation 5'),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 100,
                height: 100,
                color: colorConteiner2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 150,
                height: 100,
                color: colorConteiner,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: GestureDetector(
              onTap: () => _changePosition(Alignment.bottomRight),
              child: AnimatedAlign(
                duration: const Duration(seconds: 1),
                alignment: _alignment,
                child: AnimatedContainer(
                  width: widthConteiner.toDouble(),
                  height: 100,
                  color: Colors.blue,
                  duration: const Duration(seconds: 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}