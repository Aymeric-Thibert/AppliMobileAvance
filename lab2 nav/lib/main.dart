import 'package:flutter/material.dart';
import 'package:lab2nav/ecran_a.dart';
import 'package:lab2nav/ecran_accueil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Ecranaccueil(),
      routes: routes(),

    );
  }

  Map<String, WidgetBuilder> routes(){
    return{
        '/ecrana': (context) => const Ecran_a(leParametre: "parametre", autreParam: "parametre2s",),
        '/accueil': (context) => const Ecranaccueil(),

    };

  }


}
