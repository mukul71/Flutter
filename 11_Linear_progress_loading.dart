
import 'package:flutter/material.dart';

main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Linear Progress'),
        ),
        body: Center(
          child: LinearProgressIndicator(
            color: Colors.amber,
            minHeight: 5,
          ),
        ),
      ),
    );
  }
}
