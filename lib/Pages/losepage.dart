import 'package:flutter/material.dart';

class Losepage extends StatelessWidget {
  const Losepage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
         children: [
              const Text(
              "\n\nYou Lost the game!\nBetter Luck Next Time!",
              style: TextStyle(
                fontSize: 50,
                color: Colors.blue
              ),
              ),
              const SizedBox(
                height: 200.0,
              ),
            ElevatedButton(
                child: const Text("Back To Main Menu"),
                onPressed: () {
                    Navigator.pushNamed(context, '/Homepage');
                },
                  )
                ],
              ),
              
    );
  }
}