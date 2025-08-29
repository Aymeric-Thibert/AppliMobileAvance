import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo!',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Demo!',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          iconTheme: const IconThemeData(color: Colors.blue),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 200,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.only(left: 6, top: 6, right: 6),
                      child: Container(color: Colors.red, height: 200),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'YO',
                                style: TextStyle(color: Colors.red, fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        Expanded(child: Container(height: 200)),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Expanded(child: Container(color: Colors.white)),
                        Expanded(child: Container(color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child :Container()),
             SizedBox(
              width: double.infinity, height: 80,
              child: ElevatedButton(
              onPressed: (){}, child: Text("Bouton du bas"), style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16), // padding du bouton
              ),

              ),
            )
            ),
          ],
        ),
      ),
    );
  }
}