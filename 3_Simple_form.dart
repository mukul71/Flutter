import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey),
        scaffoldBackgroundColor: Colors.white70,
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.brown, foregroundColor: Colors.white70),
        bottomNavigationBarTheme:
            BottomNavigationBarThemeData(backgroundColor: Colors.brown),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    mySnackBar(message, context) {
      return ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message)));
    }

    ButtonStyle buttonStyle =
        ElevatedButton.styleFrom(minimumSize: Size(300, 60));

    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        actions: [
          IconButton(
              onPressed: () {
                mySnackBar('Mail me', context);
              },
              icon: Icon(Icons.mail)),
          IconButton(
              onPressed: () {
                mySnackBar('Write a comment', context);
              },
              icon: Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                mySnackBar('Search here', context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                mySnackBar('This is Settings', context);
              },
              icon: Icon(Icons.settings))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mySnackBar('I am FAB', context);
        },
        child: Icon(Icons.check),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.local_gas_station), label: 'Station'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.desk), label: 'Counter')
        ],
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            mySnackBar('Station', context);
          } else if (index == 1) {
            mySnackBar('Home', context);
          } else if (index == 2) {
            mySnackBar('Cash Counter', context);
          }
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'First name'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Last name'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Email'),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Submit'),
            style: buttonStyle,
          ),
        ],
      ),
    );
  }
}
