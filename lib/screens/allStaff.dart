import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harrypotter/screens/characterDescription.dart';

import '../Models/charaModel.dart';

class allStaff extends StatefulWidget {
  // const allStudent({ Key? key }) : super(key: key);
  final data;
  allStaff ({required this.data});

  @override
  State<allStaff> createState() => AllStaffState();
}

class AllStaffState extends State<allStaff> {
      late var item = widget.data as List<characterDataModel>;
  late List<dynamic> filterhouse = item;

  searchCharacterByStaff(String query) {
    
      final suggestion = item.where((book) {
        final name = book.hogwartsStaff.toString();
        final input = query;
        return name.contains(input);
      }).toList();
      setState(() {
        filterhouse = suggestion;

      });
    }
        @override
  void initState() {
    super.initState();
    searchCharacterByStaff("true");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hogwarts Staff"),),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 1/1.7,mainAxisSpacing: 10,crossAxisSpacing: 5),
          itemCount: filterhouse.length,
          itemBuilder: (context, i) {
            // print(widget.houseData[i].house);
            return GridTile(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () => Get.to(characterDescription(characterDetails: filterhouse[i])),
                    child: Container(
                                      height: 270,
                                      width: 130,
                                      child: Align(alignment:Alignment.bottomCenter,child: Text(filterhouse[i].name,style: TextStyle(color: Colors.white,backgroundColor: Colors.black45),)),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(12)),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  filterhouse[i].image.toString()),
                                              fit: BoxFit.fill)),
                                    ),
                  ),
                ));
          },
        ),
    );
  }
}