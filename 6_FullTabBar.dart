import 'package:flutter/material.dart';
import 'package:tabbar_practice/Screens/BusinessScreen.dart';
import 'package:tabbar_practice/Screens/CommentScreen.dart';
import 'package:tabbar_practice/Screens/EmailScreen.dart';
import 'package:tabbar_practice/Screens/SchoolScreen.dart';
import 'package:tabbar_practice/Screens/SearchScreen.dart';
import 'package:tabbar_practice/Screens/SettingsScreen.dart';
import 'package:tabbar_practice/Screens/ShopScreen.dart';

import 'Screens/HomeScreen.dart';
import 'Screens/EmailScreen.dart';



main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
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
          title: Text('TabBar Practice'),
          bottom: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.email),
                text: 'Email',
              ),
              Tab(
                icon: Icon(Icons.comment),
                text: 'Comment',
              ),
              Tab(
                icon: Icon(Icons.shop),
                text: 'Shop',
              ),
              Tab(
                icon: Icon(Icons.business),
                text: 'Business',
              ),
              Tab(
                icon: Icon(Icons.school),
                text: 'School',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Settings',
              ),
              Tab(
                icon: Icon(Icons.search),
                text: 'Search',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Text('Home'),
            // Text('Email'),
            // Text('Comment'),
            // Text('Shop'),
            // Text('Business'),
            // Text('School'),
            // Text('Settings'),
            // Text('Search'),
            HomeScreen(),
            EmailScreen(),
            CommentScreen(),
            ShopScreen(),
            BusinessScreen(),
            SchoolScreen(),
            SettingsScreen(),
            SearchScreen(),
        ],
        ) ,
      ),
    );
  }
}
