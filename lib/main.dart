import 'package:flutter/material.dart';

void main() =>  runApp (MyApp());

class MyApp extends StatelessWidget {
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
          width: 200.0,
            height: 200.0,
          decoration: BoxDecoration(
            color: Colors.orange,
            gradient: LinearGradient(
              begin:Alignment(0.0,-1.0),
              end:Alignment(0.0,-0.8),
                tileMode: TileMode.mirror,
              //tileMode: TileMode.repeated,
              colors: [Colors.purple[50],Colors.purple[500]]
            ),
            shape: BoxShape.rectangle,
            //All direction
            borderRadius: BorderRadius.all(
              Radius.circular(50.0)
            ),
            //only
           /* borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0)

            )*/
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
}
