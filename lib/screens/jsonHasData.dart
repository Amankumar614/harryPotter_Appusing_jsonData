import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harrypotter/screens/HufflepuffList.dart';
import 'package:harrypotter/screens/RavenclawList.dart';
import 'package:harrypotter/screens/SlytherinList.dart';
import 'package:harrypotter/screens/gryffindorsList.dart';
import 'package:harrypotter/screens/particuarHouse.dart';

import '../Models/charaModel.dart';

class jsonHasData extends StatelessWidget {
  final data;
  jsonHasData({required this.data});

  @override
  Widget build(BuildContext context) {
    List personal=data.data as List<characterDataModel>;
    print("data which we getiing ${personal}");
    return Scaffold(
      body: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            labelText: 'Enter Name',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(15),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            "Categories",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gryffindors",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),

                          TextButton(
                            onPressed: () => Get.to(particularHouse(
                              houseData: data,
                              houseName: "Gryffindors",
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
                    Container(height: 200, child: gryffindors(data: data)),
                    Padding(
                      padding: const EdgeInsets.all(08.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Slytherin",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          TextButton(
                            onPressed: () => Get.to(particularHouse(
                              houseData: data,
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
                    Container(height: 200, child: Slytherin(data: data)),
                    Padding(
                      padding: const EdgeInsets.all(08.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hufflepuff",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          TextButton(
                            onPressed: () => Get.to(particularHouse(
                              houseData: data,
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
                    Container(height: 200, child: Hufflepuff(data: data)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ravenclaw",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          TextButton(
                            onPressed: () => Get.to(particularHouse(
                              houseData: data,
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
                    Container(height: 200, child: Ravenclaw(data: data)),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
      
    );
  }
}