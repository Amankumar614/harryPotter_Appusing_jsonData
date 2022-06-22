import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harrypotter/screens/AllList.dart/HufflepuffList.dart';
import 'package:harrypotter/screens/AllList.dart/RavenclawList.dart';
import 'package:harrypotter/screens/AllList.dart/SlytherinList.dart';
import 'package:harrypotter/screens/AllList.dart/categoryList.dart';
import 'package:harrypotter/screens/AllList.dart/gryffindorsList.dart';
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
                child: InkWell(
                    onTap: () => Get.to(SearchBar(
                          wholeList: widget.data,
                        ),),
                    child: Container(
                      height: 20,
                      color: Colors.amber,
                    ))),
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
                  child: categoryList(fullData: personal)),
            ),
            Container(height: 250, child: gryffindors(data: widget.data)),
            Container(height: 250, child: Slytherin(data: widget.data)),
            Container(height: 250, child: Hufflepuff(data: widget.data)),
            Container(height: 250, child: Ravenclaw(data: widget.data)),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
