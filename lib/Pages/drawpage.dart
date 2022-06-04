import 'package:flutter/material.dart';


class Drawpage extends StatelessWidget {
  const Drawpage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
         children: [
              const Text(
              "\n\nDRAW!! Better Luck Next Time!!",
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