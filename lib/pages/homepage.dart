import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/mydrawer.dart';

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
      drawer: MyDrawer(),
    );
  }
}
