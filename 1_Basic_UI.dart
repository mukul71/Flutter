import 'package:flutter/material.dart';

void main() {
  runApp(App0301());
}

class App0301 extends StatelessWidget {
  const App0301({Key? key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey),

      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    mySnackBar(message, context) {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
      ));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('App 0301'),
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar(context, 'Mail Me');
            },
            icon: Icon(Icons.email),
          ),
          IconButton(onPressed: () {mySnackBar('Write a Comment',context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: () {mySnackBar('This is Settings', context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {mySnackBar('Search Here', context);}, icon: Icon(Icons.search)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         mySnackBar("I'm Fab", context);
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.business),label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.school),label: 'School'),
        ],
        currentIndex: 1,
        onTap: (index){
          if(index == 0){
            mySnackBar('Business', context);
          }else if (index == 1){
            mySnackBar('Home', context);
          }else if(index == 2){ mySnackBar('School', context);}
        },
      ),
    );
  }
}
