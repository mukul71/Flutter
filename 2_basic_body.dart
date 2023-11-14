import 'package:flutter/material.dart';

main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(backgroundColor: Colors.blue,
          foregroundColor: Colors.white),
        ),
        home:HomePage());
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  
  mySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Body'),
        actions: [
          IconButton(onPressed: (){mySnackBar('Maile me', context);}, icon: Icon(Icons.mail)),
          IconButton(onPressed: (){mySnackBar('Comment Here', context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){mySnackBar('Search Here', context);},icon: Icon(Icons.search)),
          IconButton(onPressed: (){mySnackBar('This is Settings', context);},icon: Icon(Icons.settings))
        ],
      ),
      floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),onPressed: (){mySnackBar('I am Fab', context);}),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.business),label:'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.school),label: 'School')
        ],
        currentIndex: 1,
        onTap: (index){
          if(index ==0){
            return mySnackBar('Business', context);
          }else if(index ==1){
            return mySnackBar('Home', context);
          }else if(index == 2){
            return mySnackBar('School', context) ;
          }
        },
      ),
    );
  }
}
