import 'package:firstapp/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catolog App",
        ),
      ),
      body: Center(
        child: Text("Welcom to catalog app"),
      ),
      drawer: MyDrawer(),
    );
  }
}
