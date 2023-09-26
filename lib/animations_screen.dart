import 'package:flutter/material.dart';
import 'animation_1.dart';
import 'animation_2.dart';
import 'animation_3.dart';
import 'animation_4.dart';
import 'animation_5.dart';
import 'animation_6.dart';
import 'animation_7.dart';
import 'animation_8.dart';
import 'animation_9.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tasks"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationOne(),
                    ),
                  );
                },
                child: const Text("Animation 1")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationTwo(),
                    ),
                  );
                },
                child: const Text("Animation 2")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationThree(),
                    ),
                  );
                },
                child: const Text("Animation 3")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationFour(),
                    ),
                  );
                },
                child: const Text("Animation 4")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationFive(),
                    ),
                  );
                },
                child: const Text("Animation 5")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationSix(),
                    ),
                  );
                },
                child: const Text("Animation 6")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationSeven(),
                    ),
                  );
                },
                child: const Text("Animation 7")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationEight(),
                    ),
                  );
                },
                child: const Text("Animation 8")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationNinth(),
                    ),
                  );
                },
                child: const Text("Animation 9")),
          ],
        ),
      ),
    );
  }
}
