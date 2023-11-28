import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title: Text("Factional SizeedBox")
        ),
        body: Center(
          child: FractionallySizedBox(
            heightFactor: 0.5,
            widthFactor: 0.3,
            child: Container(
              color: Colors.green,
            ),
          ),
        ),
      )
    );
  }
}
