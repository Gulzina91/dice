import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random random = Random();
  int birinchi = 6;
  int ekinchi = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text(
          'Dice',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: InkWell(
            onTap: () {
              ozgort();
            },
            child: Row(
              children: [
                Expanded(
                    child: Image.asset(
                  'assets/images/dice_$birinchi.png',
                  color: Colors.white,
                )),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Image.asset(
                  'assets/images/dice_$ekinchi.png',
                  color: Colors.white,
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void ozgort() {
    birinchi = random.nextInt(6) + 1;
    ekinchi = random.nextInt(6) + 1;

    setState(() {});
  }
}
