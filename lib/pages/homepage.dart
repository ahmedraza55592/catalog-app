import 'package:flutter/material.dart';
import 'package:flutter_catalog/model/catalog.dart';
import 'package:flutter_catalog/widgets/itemwidget.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Material(
          child: ListView.builder(
              itemCount: Item.items.length,
              itemBuilder: (context, index) {
                return ItemWidget(
                  catalog: Item.items[index],
                );
              }),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
