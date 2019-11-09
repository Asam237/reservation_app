import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:reservation_app/src/widgets/card_elt.dart';

class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(60.0)),
              child: Center(
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 50.0,
                ),
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Container(
              alignment: Alignment.center,
            margin: EdgeInsets.all(8.0),
            child: Text("Abba Sali", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, fontFamily: "Trajan"),),
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.room,
                  color: Colors.blueGrey,
                ),
                Text("Maroua"),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                "GENERAL",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 16.0),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            CardElt(
              text1: "Informations personnelles",
              text2: "Langues",
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                "AUTRES",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 16.0),
              ),
            ),
            CardElt(
              text1: "Informations personnelles",
              text2: "Langues",
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              height: 45.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blueGrey),
              child: Center(
                child: Text(
                  "Deconnexion",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              width: 200.0,
            )
          ],
        ),
      ),
    );
  }
}
