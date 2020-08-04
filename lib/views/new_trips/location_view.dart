import 'package:flutter/material.dart';

class NewTripLocationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _titleController = new TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Trip- Location'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Enter A Location"),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                controller: _titleController,
                autofocus: true,
              ),
            ),
            RaisedButton(
              child: Text("Continue"),
              onPressed:(){

              },
            ),
          ],
        ),
      )
    );
  }
}
