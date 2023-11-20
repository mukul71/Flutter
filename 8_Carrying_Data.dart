import 'package:flutter/material.dart';
import 'package:passing_data/Pages/PageOne.dart';
import 'package:passing_data/Pages/PageTwo.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.deepOrangeAccent,
              foregroundColor: Colors.white)),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageOne()));
                },
                child: Text('Page One')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageTwo()));
                },
                child: Text('Page Two'))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:passing_data/Pages/PageTwo.dart';
import 'package:passing_data/main.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));}, child: Text('Go Home')),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageTwo()));}, child: Text('Page Two')),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:passing_data/Pages/PageOne.dart';
import 'package:passing_data/main.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
      ),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text('Go Home')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageOne()));
                },
                child: Text('Page One')),
          ],
        ),
      ),
    );
  }
}

