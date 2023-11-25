import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Circular Prgress'),
        ),
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.amber,
            strokeWidth: 1,
          ),
        ),
      ),
    );
  }
}
