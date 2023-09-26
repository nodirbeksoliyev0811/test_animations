import 'package:flutter/material.dart';

class AnimationThree extends StatefulWidget {
  const AnimationThree({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimationThreeState createState() => _AnimationThreeState();
}

class _AnimationThreeState extends State<AnimationThree> {
  Alignment _alignment = Alignment.center;

  void _changePosition(Alignment alignment) {
    setState(() {
      _alignment = alignment;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation 3'),
      ),
      body: Stack(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => _changePosition(Alignment.center),
              child: const Icon(Icons.refresh),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20,left: 20,right: 20,top: 20),
            child: AnimatedAlign(
              duration: const Duration(seconds: 1),
              alignment: _alignment,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _changePosition(Alignment.centerLeft),
                  child: const Icon(Icons.arrow_left_sharp),
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () => _changePosition(Alignment.topCenter),
                      child: const Icon(Icons.arrow_drop_up_sharp),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () => _changePosition(Alignment.bottomCenter),
                      child: const Icon(Icons.arrow_drop_down_sharp),
                    ),
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () => _changePosition(Alignment.centerRight),
                  child: const Icon(Icons.arrow_right_sharp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

