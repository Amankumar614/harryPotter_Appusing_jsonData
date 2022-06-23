import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:harrypotter/widgets/categoryList.dart';
import 'package:harrypotter/screens/searchName.dart';

import '../Models/charaModel.dart';
import '../screens/EachHouses/HufflepuffList.dart';
import '../screens/EachHouses/RavenclawList.dart';
import '../screens/EachHouses/SlytherinList.dart';
import '../screens/EachHouses/gryffindorsList.dart';
// import 'package:shimmer/shimmer.dart';

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
    double height= MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: ()=>Get.to(SearchBar(wholeList: widget.data)),
                child: 
                   Container(
                    child: Center(child: ListTile(leading: Icon(Icons.search),title: Text("Search",style: TextStyle(color: Colors.grey),),)),
                    height: height*0.06,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey)),
                  ),
                
              ),
            ),
            SizedBox(
              height: height*0.01,
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
            SizedBox(
              height: height*0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: categoryList(fullData: personal)),
            ),
            Container(height: height*0.32, child: gryffindors(data: widget.data)),
            Container(height: height*0.323, child: Slytherin(data: widget.data)),
            Container(height: height*0.32, child: Hufflepuff(data: widget.data)),
            Container(height: height*0.32, child: Ravenclaw(data: widget.data)),
            
          ],
        ),
      ),
    );
  }
}
