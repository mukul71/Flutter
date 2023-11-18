import 'package:flutter/material.dart';

import 'Screens/businessScreen.dart';
import 'Screens/commentScreen.dart';
import 'Screens/emailScreen.dart';
import 'Screens/homeScreen.dart';
import 'Screens/schoolScreen.dart';
import 'Screens/searchScreen.dart';
import 'Screens/settingsScreen.dart';
import 'Screens/shopScreen.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8, 
        child: Scaffold(
          appBar: AppBar(
            title: Text('gasMe'),
            bottom: TabBar(
              isScrollable: true,
                tabs: [
              Tab(icon: Icon(Icons.home),text: 'Home',),
                  Tab(icon: Icon(Icons.email),text: 'Email',),
                  Tab(icon: Icon(Icons.comment),text: 'Comment',),
                  Tab(icon: Icon(Icons.shop),text: 'Shop',),
                  Tab(icon: Icon(Icons.school),text: 'School',),
                  Tab(icon: Icon(Icons.business),text: 'Business',),
                  Tab(icon: Icon(Icons.settings),text: 'Settings',),
                  Tab(icon: Icon(Icons.search),text: 'Search',),
            ]),
          ),
          body: TabBarView(
            children: [
              // Text('Home'),
              // Text('Email'),
              // Text('Comment'),
              // Text('Shop'),
              // Text('School'),
              // Text('Business'),
              // Text('Settings'),
              // Text('Search'),
             homeScreen(),
              emailScreen(),
              commentScreen(),
              shopScreen(),
              schoolScreen(),
              businessScreen(),
              settingsScreen(),
              searchScreen(),

            ],
          ),
        ),);
  }
}
