import 'package:flutter/material.dart';


class CardElt extends StatelessWidget {
  String text1, text2;
  CardElt({this.text1, this.text2});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: ListTile(
                title: Text(text1),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.blueGrey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 1),
              height: 1.0,
              color: Colors.black26,
              width: double.infinity,
            ),

            Container(
              child: ListTile(
                title: Text(text2),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.blueGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
