import 'package:flutter/material.dart';
import 'MyNightJungle.dart';
import 'HomePage.dart';
import 'LoginPage.dart';

class MyReservations extends StatefulWidget {
  @override
  _MyReservationsState createState() => new _MyReservationsState();
}

class _MyReservationsState extends State<MyReservations>{
    Widget build(BuildContext context){
      return new Scaffold(
        appBar: new AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('My Reservations'),
        centerTitle: true,
        ),

        bottomNavigationBar: BottomAppBar(
          child:
           new Row(
            mainAxisSize:MainAxisSize.min, 
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home), 
                color: Colors.deepPurple, 
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));}),
              IconButton(
                icon: Icon(Icons.list),
                color:Colors.deepPurple, 
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyReservations()));}),
              IconButton(
                icon: Icon(Icons.person), 
                color: Colors.deepPurple, 
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyNightJungle()));}),
              IconButton(
                icon: Icon(Icons.power_settings_new),
                color: Colors.deepPurple, 
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));})

            ],
          ),
        ),
    
        body: Column(children: <Widget>[
        
          Center(
                 child:
                    Text('There is no reservation yet..')
               )
            ],
         )
          
      );
    }
}

