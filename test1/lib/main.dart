import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Padding(padding:  const EdgeInsets.all(8.0),child: Container(color: Colors.green, height: 200,)),
            Padding(padding: const EdgeInsets.only(left: 6) ,child: Container(color: Colors.red, height: 200),),
            Padding(padding: const EdgeInsets.only(right: 6,bottom: 8) ,child: Container(color: Colors.purple, height: 200)),
            Expanded(child: Container(color: Colors.black, height: 200)),
            Expanded(child: Container(color: Colors.orange, height: 200)),
            Expanded(child: Container(color: Colors.pink, height: 200)),
            Expanded(child: Container(color: Colors.purple, height: 200)),
            Expanded(child: Container(color: Colors.blue, height: 200)),
            Expanded(child: Container(color: Colors.brown, height: 200)),
            Expanded(child: Container(color: Colors.yellow, height: 200)),
          ],
        ),
      ),
    );
  }
}

