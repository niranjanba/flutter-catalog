import 'package:firstapp/model/catalog.dart';
import 'package:firstapp/widgets/drawer.dart';
import 'package:firstapp/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final dummyList = List.generate(30, (index) => CatalogModel.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catolg App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
