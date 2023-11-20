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

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              PageOne('Home Page to Page One')));
                },
                child: Text('Page One')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              PageTwo('Home Page to Page Two')));
                },
                child: Text('Page Two'))
          ],
        ),
      ),
    );
  }
}
//
//
import 'package:flutter/material.dart';
import 'package:passing_data/Pages/PageTwo.dart';
import 'package:passing_data/main.dart';

class PageOne extends StatelessWidget {
  String msg;
   PageOne(
      this.msg,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
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
                      MaterialPageRoute(builder: (context) => PageTwo('Page One to Page Two')));
                },
                child: Text('Page Two')),
          ],
        ),
      ),
    );
  }
}
//
//
import 'package:flutter/material.dart';
import 'package:passing_data/Pages/PageOne.dart';
import 'package:passing_data/main.dart';

class PageTwo extends StatelessWidget {
  String msg;
   PageTwo(
       this.msg,
       {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
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
                      MaterialPageRoute(builder: (context) => PageOne('Page Two to Page One')));
                },
                child: Text('Page One')),
          ],
        ),
      ),
    );
  }
}


