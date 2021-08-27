import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/model/catalog.dart';
import 'package:flutter_catalog/widgets/itemwidget.dart';
import 'package:flutter_catalog/widgets/mydrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadDataFromJson();
  }

  loadDataFromJson() async {
    // await Future.delayed(Duration(seconds: 2));
    //root bundle return the future so we need to wait
    final jsonData = await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(jsonData);
    var productData = decodeData["products"];
    Item.items = List.from(productData)
        .map<Catalog>((catalog) => Catalog.fromMap(catalog))
        .toList();
    setState(() {});
    // print(productData);
  }

  @override
  Widget build(BuildContext context) {
    // final dummyListItem = List.generate(30, (index) => Item.items[0]);
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
          child: Item.items != null && Item.items.isNotEmpty
              ? ListView.builder(
                  itemCount: Item.items.length,
                  itemBuilder: (context, index) {
                    return ItemWidget(catalog: Item.items[index]);
                  },

                  // itemCount: Item.items.length,
                  // itemBuilder: (context, index) {
                  //   return ItemWidget(
                  //     catalog: Item.items[index],
                  //   );
                  // }
                )
              : Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
