import 'package:flutter/material.dart';
import 'package:reservation_app/src/screens/screens_sec/buy_ticket.dart';
import 'package:reservation_app/src/screens/screens_sec/profil_page.dart';
import 'package:reservation_app/src/widgets/drawer_page.dart';
import 'package:reservation_app/src/widgets/static_elt.dart';

class MyMain extends StatefulWidget {
  @override
  _MyMainState createState() => _MyMainState();
}

class _MyMainState extends State<MyMain> {
  var esp = SizedBox(
    width: 10.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myBottom(),
      /*appBar: AppBar(
        title: Text(
          "Menu principal",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),*/

      //drawer: monDrawer(context),

      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          Container(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  title: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Text(
                          "Hello",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Asam",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30.0),
                          )),
                    ],
                  ),
                  trailing: Container(
                    width: 100.0,
                    height: 300.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blueGrey),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          )),
          SizedBox(
            height: 10.0,
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black38,
                  ),
                  hintText: "Rechercher un endroit",
                  suffixIcon: Icon(
                    Icons.settings,
                    color: Colors.black38,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0))),
            ),
          ),
          ListTile(
            title: Text(
              "Activité principale",
              style: TextStyle(fontSize: 25.0, fontFamily: "Schyler"),
            ),
            trailing: Icon(
              Icons.directions_car,
              size: 30.0,
              color: Colors.blueGrey,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyTicked()));
                },
                child: myMainElt("assets/images/coin.png", "Achetez un ticket"),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  dialogAlert(context);
                },
                child:
                    myMainElt("assets/images/destination.png", "Destination"),
              ))
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: InkWell(
                onTap: () {
                  dialogAlert(context);
                },
                child: myMainElt(
                    "assets/images/reservation.png", "Reservez un voyage"),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilPage()));
                },
                child: myMainElt("assets/images/user.png", "Compte"),
              ))
            ],
          ),
          ListTile(
            title: Text(
              "Autres activités",
              style: TextStyle(fontSize: 25.0, fontFamily: "Schyler"),
            ),
            trailing: Icon(
              Icons.adb,
              size: 30.0,
              color: Colors.blueGrey,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          InkWell(
              onTap: () {
                dialogAlert(context);
              },
              //Others activity

              child: myOtherElt("assets/images/sun.png", "AccuWeather",
                  "Recevez des informations météo actualisées")),
          InkWell(
            onTap: (){
              dialogAlert(context);
            },
            child: myOtherElt("assets/images/wikipedia.png", "WikiPedia",
                "Trouvez l'information"),
          ),
          /*myOtherElt("assets/images/sun.png", "AccuWeather",
              "Recevez des informations météo actualisées")*/
        ]),
      ),
    );
  }
}
