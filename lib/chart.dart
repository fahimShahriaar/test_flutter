import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(5),
        child: Card(
          elevation: 5,
          color: Colors.blue[300],
          child: Text("CHART"),
        ));
  }
}
