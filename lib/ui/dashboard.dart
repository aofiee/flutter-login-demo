import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Dashboard"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.grey.shade400,
    );
  }
}