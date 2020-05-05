
import 'package:flutter/material.dart';
import 'LoginPage.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.pink[50],
        primaryColor: Colors.deepPurpleAccent,
       ),
      title: 'Welcome to Night Jungle',
      home: new LoginPage(),
     );
  }
}

