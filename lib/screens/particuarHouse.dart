import 'package:flutter/material.dart';

class particularHouse extends StatelessWidget {
final houseData;
particularHouse({this.houseData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("House name"),),
    );
  }
}