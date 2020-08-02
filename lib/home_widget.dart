import 'package:flutter/material.dart';
import 'package:flutterlayout/pages.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    ExplorePage(),
    PastTripsPage()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Travel Budget App"),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.explore),
            title: new Text("Explore"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.history),
            title: new Text("Past Trips"),
          ),
        ],
      ),
    );
  }
  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
}
