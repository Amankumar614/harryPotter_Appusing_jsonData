import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harrypotter/screens/houses.dart';
import 'package:harrypotter/screens/particuarHouse.dart';

class allhouse extends StatelessWidget {
  final wholeData;
  allhouse({required this.wholeData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Houses"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            mainAxisExtent: 150),
        children: [
          InkWell(
              onTap: () {
                Get.to(houses(
                  data: wholeData,
                  houseName: "Gryffindor",
                ));
              },
              child: box("https://1000logos.net/wp-content/uploads/2021/11/Gryffindor-Logo.png",Colors.red,"Gryffindor")),
          InkWell(
              onTap: () {
                Get.to(houses(
                  data: wholeData,
                  houseName: "Slytherin",
                ));
              },
              child: box("https://static.wikia.nocookie.net/harrypotter/images/0/00/Slytherin_ClearBG.png/revision/latest?cb=20161020182557",Colors.green,"Slytherin")),
          InkWell(
              onTap: () {
                Get.to(houses(
                  data: wholeData,
                  houseName: "Hufflepuff",
                ));
              },
              child: box("https://static.wikia.nocookie.net/harrypotter/images/0/06/Hufflepuff_ClearBG.png/revision/latest?cb=20161020182518",Colors.yellow,"Hufflepuff")),
          InkWell(
            onTap: () {
              Get.to(houses(
                data: wholeData,
                houseName: "Ravenclaw",
              ));
            },
            child: box("https://static.wikia.nocookie.net/harrypotter/images/7/71/Ravenclaw_ClearBG.png/revision/latest?cb=20161020182442",Colors.blue,"Ravenclaw")
          ),
        ],
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
      ),
    );
  }
}
Widget box(String ImageUrl,Color color,String houseName){
  return Container(
    
    // child: Image.network(ImageUrl,fit: BoxFit.contain,),
    child: Padding(
      padding: const EdgeInsets.only(bottom:3.0),
      child: Align(alignment: Alignment.bottomCenter,child: Text(houseName,style: TextStyle(fontSize: 18,color: Colors.white,backgroundColor: Colors.black45),),),
    ),
    decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(12),image: DecorationImage(image: NetworkImage(ImageUrl))),
  );
}

