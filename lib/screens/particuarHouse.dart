// import 'dart:ui';

import 'package:flutter/material.dart';

import '../Models/charaModel.dart';

class particularHouse extends StatelessWidget {
  final houseData;
  final houseName;
  particularHouse({required this.houseData, required this.houseName});
  @override
  Widget build(BuildContext context) {
    // var item = houseData.data as List<characterDataModel>;
    print(" housedata $houseData");

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(houseName),
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 1/2,mainAxisSpacing: 10,crossAxisSpacing: 5),
          itemCount: houseData.length,
          itemBuilder: (context, i) {
            print(houseData[i].house);
            return GridTile(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                                    height: 270,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(12)),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                houseData[i].image.toString()),
                                            fit: BoxFit.fill)),
                                  ),
                ));
          },
        ));
  }
}
