import 'package:flutter/material.dart';

class Gamepage extends StatefulWidget {
  const Gamepage({Key? key}) : super(key: key);

  @override
  State<Gamepage> createState() => _GamepageState();
}

class _GamepageState extends State<Gamepage> {
  @override
  
  Widget build(BuildContext context) {
    final args = (ModalRoute.of(context)?.settings.arguments ?? <String, dynamic>{}) as Map;
    return Material(
      child: Column(
        children: [
           const Text(
              "\nSelect One!",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.blue
              ),
              
           ),
           const SizedBox(
                height: 20.0,
              ),
              Image.asset("assets/images/r.png",height: 120, width: 150),
              const SizedBox(
                height: 5.0,
              ),
              ElevatedButton(
                child: const Text("Rock"),
                onPressed: () {
                    // ignore: unused_label
                    child: if(args['random_number']==1)
                    {
                      Navigator.pushNamed(context, '/Losepage');
                    }
                    else if(args['random_number']==2)
                    {
                      Navigator.pushNamed(context, '/Winpage');
                    }
                    else 
                    {
                      Navigator.pushNamed(context, '/Drawpage');
                    }
                },
              ),
                         const SizedBox(
                    height: 10.0,
                                ),
                Image.asset("assets/images/p.PNG",height: 120, width: 150),
              const SizedBox(
                height: 5.0,
              ),
              ElevatedButton(
                child: const Text("Paper"),
                onPressed: () {
                    if(args['random_number']==2)
                    {
                      Navigator.pushNamed(context, '/Losepage');
                    }
                    else if(args['random_number']==0)
                    {
                      Navigator.pushNamed(context, '/Winpage');
                    }
                    else 
                    {
                      Navigator.pushNamed(context, '/Drawpage');
                    }
                },
              ),
                         const SizedBox(
                    height: 10.0,
                                ),
                Image.asset("assets/images/s.PNG",height: 120, width: 150),
              const SizedBox(
                height: 5.0,
              ),
              ElevatedButton(
                child: const Text("Scissors"),
                onPressed: () {
                    if(args['random_number']==0)
                    {
                      Navigator.pushNamed(context, '/Losepage');
                    }
                    else if(args['random_number']==1)
                    {
                      Navigator.pushNamed(context, '/Winpage');
                    }
                    else 
                    {
                      Navigator.pushNamed(context, '/Drawpage');
                    }
                },
              ),
                         const SizedBox(
                    height: 10.0,
                                ),
                                              ElevatedButton(
                child: const Text("Back"),
                onPressed: () {
                    Navigator.pushNamed(context, "/Homepage");
                },
              ),
        ],
      ),
    );
  }
}