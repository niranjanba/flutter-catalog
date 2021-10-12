import 'package:firstapp/model/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item? item;

  const ItemWidget({Key? key, @required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item!.image.toString()),
        title: Text(item!.name.toString()),
        subtitle: Text(item!.desc.toString()),
        trailing: Text(
          "\$${item!.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
