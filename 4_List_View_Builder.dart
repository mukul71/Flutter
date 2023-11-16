import 'package:flutter/material.dart';

main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mySnackBar(message,context){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
    }




    return Scaffold(
      appBar:AppBar(
        title: Text('List View'),
        actions: [
          IconButton(onPressed: (){mySnackBar('Mail us', context);}, icon: Icon(Icons.mail)),
          IconButton(onPressed: (){mySnackBar('Write a comment', context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){mySnackBar('Search here', context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){mySnackBar('This is Settings', context);}, icon: Icon(Icons.settings)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: (){},
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shop),label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business),label: 'Business'),
        ],
        currentIndex: 1,
      ),
    );
  }
}
