import 'package:flutter/material.dart';

class AnimationTwo extends StatefulWidget {
  const AnimationTwo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimationTwoState createState() => _AnimationTwoState();
}

class _AnimationTwoState extends State<AnimationTwo> {
  int selectedIndex = 0;

  void _toggleSelected() {
    setState(() {
      selectedIndex = (selectedIndex + 1) % 12;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation 2'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleSelected,
        child: const Icon(Icons.play_arrow),
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                AnimatedPositioned(
                  width: _getWidth(selectedIndex),
                  height: _getHeight(selectedIndex),
                  duration: const Duration(seconds: 1),
                  curve: Curves.linear,
                  child: AnimatedContainer(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_getBorderRadius(selectedIndex)),
                      color: _getColor(selectedIndex),
                    ), duration: const Duration(seconds: 1),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  double _getWidth(int index) {
    switch (index) {
      case 0:
        return 50;
      case 1:
        return 25;
      case 2:
        return 60;
      case 3:
        return 300;
      case 4:
        return 150;
      case 5:
        return 100;
      case 6:
        return 90;
      case 7:
        return 120;
      case 8:
        return 220;
      case 9:
        return 70;
      case 10:
        return 250;
      case 11:
        return 140;
      default:
        return 50;
    }
  }
  double _getHeight(int index) {
    switch (index) {
      case 0:
        return 50;
      case 1:
        return 200;
      case 2:
        return 120;
      case 3:
        return 80;
      case 4:
        return 150;
      case 5:
        return 230;
      case 6:
        return 220;
      case 7:
        return 250;
      case 8:
        return 80;
      case 9:
        return 30;
      case 10:
        return 150;
      case 11:
        return 250;
      default:
        return 50;
    }
  }
  double _getBorderRadius(int index) {
    switch (index) {
      case 0:
        return 10;
      case 1:
        return 15;
      case 2:
        return 30;
      case 3:
        return 40;
      case 4:
        return 15;
      case 5:
        return 20;
      case 6:
        return 50;
      case 7:
        return 40;
      case 8:
        return 40;
      case 9:
        return 20;
      case 10:
        return 10;
      case 11:
        return 70;
      default:
        return 10.0;
    }
  }
  Color _getColor(int index) {
    switch (index) {
      case 0:
        return const Color(0xFF2C7A00);
      case 1:
        return const Color(0xFF320E77);
      case 2:
        return const Color(0xD5007280);
      case 3:
        return const Color(0xD58A8410);
      case 4:
        return const Color(0xF7044149);
      case 5:
        return const Color(0xF7D99AF6);
      case 6:
        return const Color(0xF7207501);
      case 7:
        return const Color(0xF7ADFC94);
      case 8:
        return const Color(0xF77226E3);
      case 9:
        return const Color(0xF7B67AD2);
      case 10:
        return const Color(0xF7FD7014);
      case 11:
        return const Color(0xAD131313);
      default:
        return const Color(0xFF2C7A00);
    }
  }
}