import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harrypotter/screens/HufflepuffList.dart';
import 'package:harrypotter/screens/RavenclawList.dart';
import 'package:harrypotter/screens/SlytherinList.dart';
import 'package:harrypotter/screens/categoryList.dart';
import 'package:harrypotter/screens/gryffindorsList.dart';
import 'package:harrypotter/screens/particuarHouse.dart';
import 'package:harrypotter/screens/searchName.dart';

import '../Models/charaModel.dart';

class jsonHasData extends StatefulWidget {
  final data;
  jsonHasData({required this.data});

  @override
  State<jsonHasData> createState() => _jsonHasDataState();
}

late List<dynamic> FilteredList = [];

class _jsonHasDataState extends State<jsonHasData> {

  @override
  Widget build(BuildContext context) {
    List personal = widget.data.data as List<characterDataModel>;
    FilteredList = personal;
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchBar(
                  wholeList: widget.data,
                )),
            SizedBox(
              height: 19,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: categoryList()
              ),
            ),
            
            Container(height: 250, child: gryffindors(data: widget.data)),
            Padding(
              padding: const EdgeInsets.all(08.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Slytherin",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () => Get.to(particularHouse(
                      houseData: widget.data,
                      houseName: "Slytherin",
                    )),
                    child: Text(
                      "See All",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            Container(height: 200, child: Slytherin(data: widget.data)),
            Padding(
              padding: const EdgeInsets.all(08.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hufflepuff",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () => Get.to(particularHouse(
                      houseData: widget.data,
                      houseName: "Hufflepuff",
                    )),
                    child: Text(
                      "See All",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            Container(height: 200, child: Hufflepuff(data: widget.data)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ravenclaw",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () => Get.to(particularHouse(
                      houseData: widget.data,
                      houseName: "Ravenclaw",
                    )),
                    child: Text(
                      "See All",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            Container(height: 200, child: Ravenclaw(data: widget.data)),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
