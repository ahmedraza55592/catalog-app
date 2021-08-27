import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Ahmed Raza"),
                  accountEmail: Text("ahmedraza55592@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
                  ),
                )),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.black,
                ),
                textScaleFactor: 1.2,
              ),
              subtitle: Text(
                "This is Home Page",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.black,
              ),
              title: Text(
                "Email",
                style: TextStyle(
                  color: Colors.black,
                ),
                textScaleFactor: 1.2,
              ),
              subtitle: Text(
                "This is email page",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.message,
                color: Colors.black,
              ),
              title: Text(
                "Inbox",
                style: TextStyle(
                  color: Colors.black,
                ),
                textScaleFactor: 1.2,
              ),
              subtitle: Text(
                "This is Inbox Page",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
