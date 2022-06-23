import 'package:flutter/material.dart';
import 'package:harrypotter/widgets/homeScreen.dart';
import 'package:get/get.dart';

class characterDescription extends StatelessWidget {
  final characterDetails;
  characterDescription({required this.characterDetails});

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Stack(
          children: [
            
            Column(
              children: [
                Container(
                  height: height*0.58,
                  width: double.infinity,
                  color: Colors.amber[300],
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 90.0, right: 90, bottom: 35, top: 70),
                          child: Column(
                            children: [
                              Container(
                                height: height*0.31,
                                width: width*0.44,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.teal[50],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              characterDetails.image),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                             
                            ],
                          ),
                        ),
                      ),
                      Text(
                        characterDetails.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      SizedBox(height: height*0.02),
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                child: Column(
                              children: [
                                Text(
                                  "Gender",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: height*0.015,
                                ),
                                Text(
                                  characterDetails.gender,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            )),
                            Container(
                                child: Column(
                              children: [
                                Text(
                                  "Species",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: height*0.015,
                                ),
                                Text(characterDetails.species,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16))
                              ],
                            )),
                            Container(
                                child: Column(
                              children: [
                                Text(
                                  "ancestry",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: height*0.015,
                                ),
                                Text(
                                    characterDetails.ancestry == ""
                                        ? "half-blood"
                                        : characterDetails.ancestry,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16))
                              ],
                            )),
                            Container(
                                child: Column(
                              children: [
                                Text(
                                  "Year Of Birth",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: height*0.015,
                                ),
                                Text(
                                    characterDetails.dateOfBirth == ""
                                        ? "-"
                                        : characterDetails.dateOfBirth,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16))
                              ],
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height*0.05,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Description",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                  child: Container(
                    width: double.infinity,
                    child: Text(characterDetails.description),
                  ),
                ),
                
              ],
            ),
            Positioned(
              top: 490,
              left: 60,
              child: Align(
        alignment: Alignment.center,
        child: Container(height: height*0.09,width: width*0.75,decoration: BoxDecoration(color: Colors.brown,
        borderRadius: BorderRadius.circular(10)
        ),child: Center(
          child: Text("Actor name : ${characterDetails.actor}",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
        ),)
          ),
          
      
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Align(alignment: Alignment.topLeft,child: FlatButton(onPressed: ()=>Get.off(home()), child: Icon(Icons.arrow_back),)),
            )
          ],
        ),
      ),
    ));
  }
}
