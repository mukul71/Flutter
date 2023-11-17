import 'package:flutter/material.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        //tabBarTheme: TabBarTheme(indicatorColor: Colors.white),
        appBarTheme: AppBarTheme(backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),);
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
          title: Text('My App'),
          bottom: TabBar(
            isScrollable:true,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.home),text: 'HOme',),
              Tab(icon: Icon(Icons.search),text: 'Search',),
              Tab(icon: Icon(Icons.email),text: 'Email',),
              Tab(icon: Icon(Icons.settings),text: 'Settings',),
              Tab(icon: Icon(Icons.comment),text: 'Comment',),
              Tab(icon: Icon(Icons.person),text: 'Person',),
              Tab(icon: Icon(Icons.access_alarm),text: 'Alarm',),
              Tab(icon: Icon(Icons.account_balance),text: 'Balance',),

            ],
          ),
        ),
       body: TabBarView(
         children: [
            Text('Homoe'),
           Text('Search'),
           Text('Email'),
           Text('Settings'),
           Text('Comment'),
           Text('Per0son'),
           Text('Alarm'),
           Text('Balance'),
         ],
       ),
      ),);
  }
}


