import 'package:flutter/material.dart';

// TODO Un ecran minimal avec un tres peu de code
class Ecran_a extends StatefulWidget {
  final String leParametre;
  final String autreParam;

  const Ecran_a({super.key, required this.leParametre, required this.autreParam});


  @override
  State<Ecran_a> createState() => _EcranAState();
}

class _EcranAState extends State<Ecran_a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecran A'),
      ),
      body:  Text('Tu as navigué vers A ${widget.leParametre} et ${widget.autreParam}' ),
    );
  }
}
