import 'package:flutter/material.dart';
import 'package:flutter_catalog/model/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Catalog catalog;

  const ItemWidget({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${catalog.name} ${catalog.desc} ${catalog.id}");
        },
        leading: Image.network(catalog.imageurl),
        title: Text(catalog.name),
        subtitle: Text(catalog.desc),
        trailing: Text(
          "\$${catalog.price.toString()}",
          textScaleFactor: 1.2,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
