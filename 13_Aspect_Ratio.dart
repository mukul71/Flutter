import 'package:flutter/material.dart';
main()=> runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Aspect Ratio'
          ),
        ),
        body: Container(
          width:double.infinity,
          height: 300,
          color: Colors.red,
          alignment: Alignment.center,
          child: AspectRatio(
            aspectRatio: 16/9,
            child: Container(
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
