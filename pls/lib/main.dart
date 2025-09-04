import 'dart:math';

import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  List<String> noms = ["Alice", "Bob", "Charlie", "David", "Eve"];
  List<String> listeMelangee = [];


@override
  void initState(){
    super.initState();
    _melangerListe();


  }
  void _melangerListe(){

    setState((){
      listeMelangee = List.from(noms);
      listeMelangee.shuffle(Random());


    });
  }
  void Monter(int index){
    if(index > 0){
      setState(() {
  final temp = listeMelangee[index -1];
  listeMelangee[index -1] = listeMelangee[index];
  listeMelangee[index] = temp;
  _verifierordre();
      });
    }
  }
  void Descendre (int index){

  if(index < listeMelangee.length -1){
    setState(() {
      final temp = listeMelangee[index +1];
      listeMelangee[index +1] = listeMelangee[index];
      listeMelangee[index] = temp;
      _verifierordre();
    });
  }
  }


  void _verifierordre() {
    if (listeMelangee.join() == noms.join()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Reussi, melange dans 2 seconde"),
          duration: Duration(seconds: 2),
        ),
      );
      Future.delayed(const Duration(seconds: 2), () {
        _melangerListe();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: ListView.builder(
        itemCount: listeMelangee.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(listeMelangee[index]),trailing:
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(icon: const Icon(Icons.arrow_upward), onPressed: () => Monter(index),),
                IconButton(icon: const Icon(Icons.arrow_downward), onPressed: () => Descendre(index),),
              ],

            ),
            
          );
          
          
          
        },

        
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
