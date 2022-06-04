import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column( 
        children: [
            const Text(
              "\nRock Paper Scissors",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.blue
              ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Image.asset("assets/images/rps.png"),
              const SizedBox(
                height: 35.0,
              ),
              ElevatedButton(
                child: const Text("Play",
                style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
                style: ElevatedButton.styleFrom(
                fixedSize: const Size(220, 80), primary: Colors.blue),
                onPressed: () {
                  Random random = Random();
                    Navigator.pushNamed(context, '/Gamepage', arguments: {
                      'random_number' : random.nextInt(3)
                    });
                },
              ),
              const SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                child: const Text("Exit",
                style: TextStyle(
                  fontSize: 30, 
                  fontWeight: FontWeight.bold,)
                ),
                style: ElevatedButton.styleFrom(
                fixedSize: const Size(220, 80), primary: Colors.blue),
                onPressed: () {
                  SystemNavigator.pop();
                },
              ),
            const Text(
              "\nby Pratyaksh Soni",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue
              ),
              ),
        ],
      ),
    );
  }
}