import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harrypotter/Models/charaModel.dart';
import 'package:harrypotter/screens/characterDescription.dart';

class Hufflepuff extends StatelessWidget {
  final data;
  Hufflepuff({this.data});

  @override
  Widget build(BuildContext context) {
    var item = data.data as List<characterDataModel>;
    

    return Scaffold(
        body: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: item.length,
            itemBuilder: (BuildContext context, int i) {
            
              return 
                  Padding(
                    padding: const EdgeInsets.only(left:2.0),
                    child: Stack(
                      children: 
                        [item[i].house!="Hufflepuff"?Container():
                          GestureDetector(
                            onTap: ()=>Get.to(characterDescription(characterDetails: item[i])),
                            child: Container(
                            height: 270,
                            width: 130,
                            decoration: BoxDecoration(
                              
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      
                                        item[i].image.toString()),fit: BoxFit.fill)),
                                                  ),
                          ),
                        Positioned(
                          left: 20,
                          right: 12,
                          bottom: 10,
                          child: Text(item[i].name.toString(),style: TextStyle(backgroundColor: Colors.black45,color: Colors.white),))
                      ],
                    ),
                  );
            }));
  }
}
