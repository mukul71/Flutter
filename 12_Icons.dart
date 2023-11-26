import 'package:flutter/material.dart';

main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Icons'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.camera_alt,size: 90,color: Colors.redAccent,),
              Icon(Icons.local_shipping,size: 90,color: Colors.redAccent,),

            ],
          ),

        ),
      ),

    );
  }
}
