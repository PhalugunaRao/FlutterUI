import 'package:flutter/material.dart';

class MyArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rows and Columns',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rows amd Column'),
        ),
       body : Home()
       // body:AreaCalculator(),
      ),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Container(
      width: sizeX,
      height: sizeY,
      child: Column(
        verticalDirection: VerticalDirection.up,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: createSquares(5),
      ),
    );
  }

  List<Widget> createSquares(int numSquares){
    int i = 0;
    List colors =[Colors.amber,Colors.deepPurple,Colors.deepOrange,Colors.indigo,Colors.lightBlue];
    List<Widget> squares =List<Widget>();
    while(i<numSquares){
      Container square =Container(
        color: colors[i],
        width:60,
        height: 60,
        child: Text(i.toString()),
      );
      i++;
      squares.add(square);
    }
    return squares;
  }

}




