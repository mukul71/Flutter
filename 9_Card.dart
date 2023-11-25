import 'package:flutter/material.dart';

main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyCardApp'),
        ),
        body: Center(
          child: Card(
            elevation: 80,
            color: Colors.blue,

            child: SizedBox(
              height: 200,
              width: 200,
              child: Center(
                child: Text('My Card',style: TextStyle(color: Colors.white),),

              ),
            ),
          ),
        ),
      ),
    );
  }
}
