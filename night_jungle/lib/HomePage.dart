import "package:flutter/material.dart";
import "MyNightJungle.dart";
import 'MyReservations.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'LoginPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>{

List<String> photos= ['assets/images/1.jpg','assets/images/2.jpg','assets/images/3.jpg'];


  Widget build(BuildContext context){
    return new Scaffold(
      
      appBar : new AppBar(
        title: new Text('Night Jungle'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple
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
    
    
   
       body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          Center(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child:
                    SizedBox(
                      height:250.0,
                      width: 450.0,
                      child: Carousel(
                        images: [
                          ExactAssetImage("assets/images/1.jpg"),
                          ExactAssetImage("assets/images/2.jpg"),
                          ExactAssetImage("assets/images/3.jpg"),
                        ],
                      )
                    ),
                )
              ],
            ),  
          ),
          
          Center(
            child: Stack(
              children: <Widget>[
                  Padding(
                    padding : EdgeInsets.all(1.0),
                    child:
                      DataTable(
                          columnSpacing: 25,
                          columns:[
                            DataColumn(label: Text('Venue', style: TextStyle(fontWeight: FontWeight.bold))),
                            DataColumn(label: Text('Event', style: TextStyle(fontWeight: FontWeight.bold))),
                            DataColumn(label: Text('Date', style: TextStyle(fontWeight: FontWeight.bold))),
                            DataColumn(label: Text('Time', style: TextStyle(fontWeight: FontWeight.bold))),
                            DataColumn(label: Text('Reservation', style: TextStyle(fontWeight: FontWeight.bold))),] , 
                          rows:[
                            DataRow(
                            cells: [
                              DataCell(Text('Porsuk')), 
                              DataCell(Text('Concert')), 
                              DataCell(Text('05/05')), 
                              DataCell(Text('20:00')),
                              DataCell(
                                FlatButton(
                                  color: Colors.deepPurpleAccent,
                                  child: Text('+'),
                                  onPressed: (){
                                    showDialog( 
                                      context: context,
                                      builder: (BuildContext context){
                                          return AlertDialog(
                                            title: Text('Reservation Box') ,
                                            content:Text('Do you want to add reservation?'),
                                            actions: <Widget>[
                                              FlatButton(
                                                child: Text('Yes'),
                                                onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=> MyReservations()));

                                                },),
                                              FlatButton(
                                                child: Text('No'),
                                                onPressed: (){
                                                Navigator.pop(context, MaterialPageRoute(builder: (context)=> HomePage()));               
                                              },
                                            )
                                          ]
                                      );
                                    },
                                );
                              }
                            )
                                  
                            )
                          ]
                        ),
        
                          DataRow(
                            cells: [
                              DataCell(Text('Tattoo')), 
                              DataCell(Text('Party')), 
                              DataCell(Text('07/05')), 
                              DataCell(Text('23:00')),
                              DataCell(
                                FlatButton(
                                  color: Colors.deepPurpleAccent,
                                  child: Text('+'),
                                  onPressed: (){
                                    showDialog( 
                                      context: context,
                                      builder: (BuildContext context){
                                          return AlertDialog(
                                            title: Text('Reservation Box') ,
                                            content:Text('Do you want to add reservation?'),
                                            actions: <Widget>[
                                              FlatButton(
                                                child: Text('Yes'),
                                                onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=> MyReservations()));

                                                },),
                                              FlatButton(
                                                child: Text('No'),
                                                onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));               
                                              },
                                            )
                                          ]
                                      );
                                    },
                                );
                              }
                            )
                                  
                            )
                          ]
                        ),

                          DataRow(
                            cells: [
                              DataCell(Text('Vecihi')), 
                              DataCell(Text('Concept Party')), 
                              DataCell(Text('12/05')), 
                              DataCell(Text('00:00')),
                              DataCell(
                                FlatButton(
                                  color: Colors.deepPurpleAccent,
                                  child: Text('+'),
                                  onPressed: (){
                                    showDialog( 
                                      context: context,
                                      builder: (BuildContext context){
                                          return AlertDialog(
                                            title: Text('Reservation Box') ,
                                            content:Text('Do you want to add reservation?'),
                                            actions: <Widget>[
                                              FlatButton(
                                                child: Text('Yes'),
                                                onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=> MyReservations()));

                                                },),
                                              FlatButton(
                                                child: Text('No'),
                                                onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));               
                                              },
                                            )
                                          ]
                                      );
                                    },
                                );
                              }
                            )
                                  
                            )
                          ]
                        ),

                          DataRow(
                            cells: [
                              DataCell(Text('Porsuk')), 
                              DataCell(Text('Jam Session')), 
                              DataCell(Text('15/05')), 
                              DataCell(Text('21:00')),
                              DataCell(
                                FlatButton(
                                  color: Colors.deepPurpleAccent,
                                  child: Text('+'),
                                  onPressed: (){
                                    showDialog( 
                                      context: context,
                                      builder: (BuildContext context){
                                          return AlertDialog(
                                            title: Text('Reservation Box') ,
                                            content:Text('Do you want to add reservation?'),
                                            actions: <Widget>[
                                              FlatButton(
                                                child: Text('Yes'),
                                                onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=> MyReservations()));
                                                
                                                },),
                                              FlatButton(
                                                child: Text('No'),
                                                onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));               
                                              },
                                            )
                                          ]
                                      );
                                    },
                                );
                              }
                            )
                                  
                            )
                            ]
                          ),
                        ],
                      ),
                  
                )
                 
              ],
              ),
            ),
          
        
           
          ],
        ),
      );
    }
  }