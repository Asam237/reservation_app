import 'package:flutter/material.dart';

class DestPage extends StatefulWidget {
  @override
  _DestPageState createState() => _DestPageState();
}

class _DestPageState extends State<DestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Destination", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}


