import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:reservation_app/src/models/api_services.dart';
import 'package:reservation_app/src/screens/menu_page.dart';
import 'package:reservation_app/src/widgets/static_elt.dart';

class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final userL = TextEditingController();
  final passL = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Connexion",
            style: TextStyle(color: Colors.white, fontFamily: "Pac"),
          ),
          backgroundColor: Colors.blueGrey,
          leading: Icon(
            Icons.account_circle,
            color: Colors.white,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset(
                  "assets/images/lock.png",
                  width: 120.0,
                  height: 120.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                child: TextField(
                  controller: userL,
                  decoration: InputDecoration(
                      labelText: "Nom d'utilisateur",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                child: TextField(
                  controller: passL,
                  decoration: InputDecoration(
                      labelText: "Mot de passe",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => MyMain()),
                      (Route route) => false);
                },
                /*if (userL.text.isEmpty && passL.text.isEmpty) {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text("Erreur"),
                              content: Text("Champ d'entré vide !"),
                              actions: <Widget>[
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Ok"))
                              ],
                            ));
                    return;
                  }
                  else {
                    final usr = ApiServices.getUser();
                    if(usr == null){

                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Erreur"),
                            content: Text("Erreur provenant de la connexion !"),
                            actions: <Widget>[
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Ok"))
                            ],
                          ));
                      return;
                    } else {
                      final userWithEaP = usr.any((u) => u['name'] == userL.text && u['psswrd'] == passL.text);
                    }
                  }
                },*/

                child: Container(
                  margin: EdgeInsets.all(6.0),
                  height: 45.0,
                  alignment: Alignment.center,
                  width: 300.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blueGrey,
                  ),
                  child: Center(
                    child: Text(
                      "Connexion",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Vous n'avez pas de compte ?"),
                  SizedBox(
                    width: 5.0,
                  ),
                  InkWell(
                    onTap: null,
                    child: Text(
                      "Inscrivez-vous.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Schyler",
                          fontSize: 19.0,
                          color: Colors.red),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.all(18.0),
                child: Text(
                  "Partagez avec : ",
                  style: TextStyle(fontFamily: "Schyler", fontSize: 24.0),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: null,
                    child: Image.asset(
                      "assets/images/share/facebook.png",
                      width: 35.0,
                      height: 35.0,
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  InkWell(
                    onTap: null,
                    child: Image.asset(
                      "assets/images/share/twitter.png",
                      width: 35.0,
                      height: 35.0,
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  InkWell(
                    onTap: null,
                    child: Image.asset(
                      "assets/images/share/youtube.png",
                      width: 35.0,
                      height: 35.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: myBottom());
  }
}
