import 'package:flutter/material.dart';
import 'package:flutter_catalog/model/catalog.dart';
import 'package:flutter_catalog/widgets/mydrawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Catalog",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
      ),
      body: Material(
        child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Text(products[index].name),
                ],
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
