import 'package:flutter/material.dart';
import 'package:reservation_app/src/widgets/static_elt.dart';

class MyTicked extends StatefulWidget {
  @override
  _MyTickedState createState() => _MyTickedState();
}

class _MyTickedState extends State<MyTicked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Achat du ticket",
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: myBottom(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/coin.png",
                width: 180.0,
                height: 180.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Achat du ticket sur DjangalExpress",
                style: TextStyle(
                    fontFamily: "Schyler",
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(6.0),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Ville de depart",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.my_location,
                      color: Colors.blueGrey,
                    ),
                    onPressed: null)
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(6.0),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Ville d'arrivée",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.train,
                      color: Colors.blueGrey,
                    ),
                    onPressed: null)
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(6.0),
                height: 45.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blueGrey,
                ),
                child: Center(
                  child: Text(
                    "Rechercher",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
