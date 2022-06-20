// import 'dart:ui';

import 'package:flutter/material.dart';

import '../Models/charaModel.dart';

class particularHouse extends StatelessWidget {
  final houseData;
  final houseName;
  particularHouse({required this.houseData, required this.houseName});
  @override
  Widget build(BuildContext context) {
    var item = houseData.data as List<characterDataModel>;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(houseName),
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 2,
          itemBuilder: (context, i) {
            print(item[i].house);
            return item[i].house!=houseName?SizedBox():GridTile(
                child: Container(
                    color: Colors.amber,
                    child: Image.network(
                      item[i].image.toString(),
                      fit: BoxFit.fill,
                    )));
          },
        ));
  }
}
