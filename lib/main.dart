import 'package:flutter/material.dart';
import 'Pages/drawpage.dart';
import 'Pages/losepage.dart';
import 'Pages/winpage.dart';
import 'Pages/homepage.dart';
import 'Pages/gamepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "/Homepage":(context) => const HomePage(),
        "/Gamepage":(context) => const Gamepage(),
        "/Winpage":(context) => const Winpage(),
        "/Losepage":(context) => const Losepage(),
        "/Drawpage":(context) => const Drawpage(),
      }
    );
  }
}
