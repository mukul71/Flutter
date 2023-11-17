import 'package:flutter/material.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
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
            tabs: [
              Tab(icon: Icon(Icons.home),text: 'HOme',),
              Tab(icon: Icon(Icons.search),text: 'Search',),
              Tab(icon: Icon(Icons.email),text: 'Email',),
              Tab(icon: Icon(Icons.settings),text: 'Settings',),
              Tab(icon: Icon(Icons.contact_mail),text: 'Contacuht Email',),
              Tab(icon: Icon(Icons.person),text: 'Person',),
              Tab(icon: Icon(Icons.access_alarm),text: 'Alarm',),
              Tab(icon: Icon(Icons.account_balance),text: 'Balance',),

            ],
          ),
        ),
      ),);
  }
}


