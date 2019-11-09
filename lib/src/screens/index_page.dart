import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:reservation_app/src/screens/login_page.dart';
import 'package:reservation_app/src/widgets/static_elt.dart';

class MyIndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/bus.png",
              width: 180.0,
              height: 180.0,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            "Djangal Express",
            style: TextStyle(
                color: Colors.black, fontFamily: "Schyler", fontSize: 30.0),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: Text(
              "Cette application vous permettra de mieux préparer vos voyages\ntout en achetant ou en conservant vos billets !",
              style: TextStyle(fontSize: 13.0, letterSpacing: 0.1),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyLoginPage()));
            },
            child: Container(
              width: 300.0,
              alignment: Alignment.center,
              height: 45.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blueGrey),
              child: Center(
                child: Text(
                  "Continuez",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: myBottom()
    );
  }
}
