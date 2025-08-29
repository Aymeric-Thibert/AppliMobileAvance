import 'package:flutter/material.dart';
import 'package:lab2nav/LeTiroir.dart';
import 'package:lab2nav/ecran_a.dart';


void main() {
  runApp(const Ecranaccueil());
}


class Ecranaccueil extends StatefulWidget {
  const Ecranaccueil({super.key});


  @override
  State<Ecranaccueil> createState() => _Ecran_accueil();
}

class _Ecran_accueil extends State<Ecranaccueil> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: const LeTiroir(),
      appBar: AppBar(
        title: const Text("Accueil"),
      ),

      body: Column(
        children: <Widget>[

          OutlinedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Ecran_a(

                leParametre: "testtest",
                autreParam: "ID",
              )));
            }
            , child: const Text("VERS A"),)

        ],

      ),

    );
  }
}
