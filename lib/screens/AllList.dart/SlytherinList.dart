import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harrypotter/Models/charaModel.dart';
import 'package:harrypotter/screens/characterDescription.dart';
import 'package:harrypotter/screens/particuarHouse.dart';

class Slytherin extends StatefulWidget {
  final data;
  Slytherin({this.data});

  @override
  State<Slytherin> createState() => _SlytherinState();
}

class _SlytherinState extends State<Slytherin> {

    late var item = widget.data.data as List<characterDataModel>;
  late List<dynamic> filterhouse = item;

  searchCharacterBySlytherin(String query) {
    
      final suggestion = item.where((book) {
        final name = book.house.toString();
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
    searchCharacterBySlytherin("Slytherin");
  }

  @override
  Widget build(BuildContext context) {
    var item = widget.data.data as List<characterDataModel>;
    return  Scaffold(
        body: Column(
          children: [
          
            Padding(
              padding: const EdgeInsets.only(left:8.0,right: 8.0),
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Slytherin",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextButton(
                      onPressed: () => Get.to(particularHouse(
                        houseData: filterhouse,
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
                ),),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: filterhouse.length,
                  itemBuilder: (BuildContext context, int i) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                           GestureDetector(
                                  onTap: () => Get.to(characterDescription(
                                    characterDetails: filterhouse[i],
                                  )),
                                  child: Container(
                                    height: 270,
                                    width: 130,
                                    decoration: BoxDecoration(
                                                                            color: Colors.grey,

                                        borderRadius:
                                            BorderRadius.all(Radius.circular(12)),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                filterhouse[i].image.toString()),
                                            fit: BoxFit.fill)),
                                  ),
                                ),
                          Positioned(
                              left: 20,
                              right: 12,
                              bottom: 10,
                              child: Text(
                                filterhouse[i].name.toString(),
                                style: TextStyle(
                                    backgroundColor: Colors.black45,
                                    color: Colors.white),
                              ))
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
