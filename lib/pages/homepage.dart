import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int number = 12;

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Catalog"),
      ),
      body: Material(
        child: Container(
          child: Column(
            children: [
              Text("Welcome $number to flutter"),
              Center(
                child: Text("This is second Coloumn"),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Center(child: Text("First")),
      ),
    );
  }
}
