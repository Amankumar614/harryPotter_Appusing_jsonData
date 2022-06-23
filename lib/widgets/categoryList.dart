import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harrypotter/screens/categoriesScreen/stillAlive.dart';
import 'package:harrypotter/screens/categoriesScreen/Allstudent.dart';
import 'package:harrypotter/screens/categoriesScreen/allStaff.dart';
import 'package:harrypotter/screens/categoriesScreen/allhouse.dart';
import 'package:harrypotter/screens/categoriesScreen/species.dart';

class categoryList extends StatelessWidget {
  // const categoryList({ Key? key }) : super(key: key);
  final fullData;
  categoryList({required this.fullData});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Get.to(allhouse(
                wholeData: fullData,
              ));
            },
            child: Container(
              height: height * 0.065,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Center(child: Text("hogwarts Houses")),
              ),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Get.to(allStudent(data: fullData));
            },
            child: Container(
              height: height * 0.065,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Center(child: Text("hogwarts Students")),
              ),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => Get.to(allStaff(data: fullData)),
            child: Container(
              height: height * 0.065,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Center(child: Text("hogwarts Staff")),
              ),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => Get.to(allSpecies(
              fulldata: fullData,
            )),
            child: Container(
              height: height * 0.065,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Center(child: Text("Species")),
              ),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => Get.to(stillAlive(data: fullData)),
            child: Container(
              height: height * 0.065,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Center(child: Text("Still alive")),
              ),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
