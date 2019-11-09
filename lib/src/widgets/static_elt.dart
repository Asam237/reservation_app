import 'package:flutter/material.dart';

Widget myBottom() {
  return Container(
    margin: EdgeInsets.all(20.0),
    child: Text(
      "DjangalExpress - 2019",
      style: TextStyle(
        color: Colors.black
      ),
      textAlign: TextAlign.center,
    ),
  );
}

Widget myMainElt(String pic, String text) {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Card(
      elevation: 5.0,
      child: Container(
        height: 150.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: Image.asset(
                pic,
                width: 80.0,
                height: 80.0,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  text,
                  style: TextStyle(
                      fontFamily: "Schyler",
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget myOtherElt(String pic, String text, String textS) {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Card(
      elevation: 5.0,
      child: Container(
        height: 150.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      pic,
                      width: 80.0,
                      height: 80.0,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            text,
                            style: TextStyle(
                                fontFamily: "Schyler",
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0,
                                color: Colors.black54),

                          ),
                        ),

                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            textS,
                            style: TextStyle(
                                fontFamily: "Schyler",
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.black54),

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Future dialogAlert(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Oups"),
          content: Text("En cours de creation .."),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Ok"))
          ],
        );
      });
}
