import 'package:flutter/material.dart';
import 'package:flutterlayout/home_widget.dart';



void main() =>  runApp (MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Home(),
    );
  }
}


/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xff009688),
        accentColor: Color(0xff7c4DFF),
        textTheme: TextTheme(
          body1: TextStyle(
            fontSize: 24,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container App'),
        ),
        body: Container(
          margin: EdgeInsets.all(100.0),
          width: 500.0,
            height: 400.0,
         // child: FlutterLogo(),
          decoration: BoxDecoration(
            color: Colors.orange,
            gradient: LinearGradient(
              begin:Alignment(0.0,-1.0),
              end:Alignment(0.0,-0.8),
                tileMode: TileMode.mirror,
              //tileMode: TileMode.repeated,
              colors: [Colors.purple[50],Colors.purple[500]]
            ),
            image: DecorationImage(
              image:NetworkImage('http://bit.ly/flutter_tiger'),
              fit: BoxFit.cover
            ),
            shape: BoxShape.rectangle,
            //All direction
            borderRadius: BorderRadius.all(
              Radius.circular(50.0)
            ),
            //only
           *//* borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0)

            )*//*
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.lightbulb_outline),
          onPressed: (){
            print('you rang?');
          },
        ),
        persistentFooterButtons: <Widget>[
          IconButton(
            icon:Icon(Icons.add_comment),
            onPressed: (){

            },
          ),
          IconButton(
            icon:Icon(Icons.add_alarm),
            onPressed: (){

            },
          ),
          IconButton(
            icon:Icon(Icons.add_location),
            onPressed: (){

            },
          )
        ],
      ),

    );
  }
}*/
