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
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message),duration: Duration(seconds: 1),));
    }

  var myList = [
    {"image":"https://rabbil.com/files/flutterS.png","title":"Saiful"},
    {"image":"https://rabbil.com/files/flutterS.png","title":"Rifat"},
    {"image":"https://rabbil.com/files/flutterS.png","title":"Riyad"},
    {"image":"https://rabbil.com/files/flutterS.png","title":"Porag"},
    {"image":"https://rabbil.com/files/flutterS.png","title":"Abrar"},
    {"image":"https://rabbil.com/files/flutterS.png","title":"Medha"}

  ];


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
        onPressed: (){mySnackBar('I am FAB', context);},
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shop),label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business),label: 'Business'),
        ],
        currentIndex: 1,
        onTap: (index){
          if(index == 0){
            mySnackBar('Shop', context);
          }else if (index ==1){
            mySnackBar('Home', context);
          }else if(index == 2){
            mySnackBar('Business', context);
          }
        },
      ),
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){mySnackBar(myList[index]["title"], context);},
            child: Container(
              height: 200,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Image.network(myList[index]["image"]!,fit: BoxFit.fill,),
            ),
          );
        },
      ),
    );
  }
}
