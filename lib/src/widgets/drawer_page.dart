import 'package:flutter/material.dart';

Widget monDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Abba Sali"),
          accountEmail: Text("abbasalimokolo@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(color: Colors.blueGrey),
        ),
        InkWell(
          onTap: null,
          child: ListTile(
            leading: Icon(
              Icons.my_location,
              color: Colors.blueGrey,
            ),
            title: Text("Mes troupeaux"),
          ),
        ),
        InkWell(
          onTap: null,
          child: ListTile(
            leading: Icon(
              Icons.notifications,
              color: Colors.blueGrey,
            ),
            title: Text("Notification"),
          ),
        ),
        monTrait(),
        InkWell(

          onTap: (){
          },
          child: ListTile(
            leading: Icon(
              Icons.account_circle,
              color: Colors.blueGrey,
            ),
            title: Text("Compte"),
          ),
        ),
        InkWell(
          onTap: null,
          child: ListTile(
            leading: Icon(
              Icons.payment,
              color: Colors.blueGrey,
            ),
            title: Text("Mode de paiement"),
          ),
        ),

        InkWell(
          onTap: (){
          },
          child: ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.blueGrey,
            ),
            title: Text("Parametre"),
          ),
        ),
        monTrait(),
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text("Aide et commentaires"),
          ),
        ),
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text("A propos de Mokine"),
          ),
        ),
      ],
    ),
  );
}

Widget monTrait() {
  return Container(
    height: 0.5,
    width: double.infinity,
    color: Colors.black87,
  );
}
