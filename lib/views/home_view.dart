import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutterlayout/models/Trip.dart';


class HomeView extends StatelessWidget {
  final List<Trip> tripsList =[
    Trip("New York", DateTime.now(), DateTime.now(), 200.00, "Car"),
    Trip("Boston", DateTime.now(), DateTime.now(), 250.00, "Plane"),
    Trip("Washington D.C", DateTime.now(), DateTime.now(), 200.00, "Bus"),
    Trip("Austin", DateTime.now(), DateTime.now(), 200.00, "Byke"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: tripsList.length,
        itemBuilder : (BuildContext context, int index) =>buildTripCard(context,index)
      ),
    );
  }

  Widget buildTripCard(BuildContext context, int index) {
    final tripdata =tripsList[index];
    return new Container(
        child:Card(
          child:Padding(
            padding: const EdgeInsets.all(16.0),
            child:Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:8.0,bottom:8.0),
                  child: Row(
                    children: <Widget>[
                      Text(tripdata.title,
                      style: new TextStyle(fontSize: 30.0),),
                      Spacer(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:4.0,bottom:80.0),
                  child: Row(
                    children: <Widget>[
                      Text("${DateFormat('dd/MM/yyyy').format(tripdata.startDate).toString()} - ${DateFormat('dd/MM/yyyy').format(tripdata.endDate).toString()}"),
                      Spacer(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0,bottom:8.0),
                  child: Row(
                    children: <Widget>[
                      Text("\$${tripdata.budget.toStringAsFixed(2)}",
                        style: new TextStyle(fontSize: 35.0),),
                      Spacer(),
                      //Text(tripdata.travelType),
                      Icon(Icons.directions_car)
                    ],
                  ),
                ),
              ],
            )
        )
        )
    );
  }
}
