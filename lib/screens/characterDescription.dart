import 'package:flutter/material.dart';
import 'package:harrypotter/screens/homeScreen.dart';
import 'package:get/get.dart';

class characterDescription extends StatelessWidget {
  final characterDetails;
  characterDescription({required this.characterDetails});

  @override
  Widget build(BuildContext context) {
    print("aman ${characterDetails.yearOfBirth}");
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          
          Column(
            children: [
              Container(
                height: 510,
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
                              height: 250,
                              width: 190,
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
                            // SizedBox(height: 20),

                            // SizedBox(height: 20),
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
                    SizedBox(height: 20),
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
                                height: 15,
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
                                height: 15,
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
                                height: 15,
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
                                height: 15,
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
                height: 40,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Additional details",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0,bottom: 10,right: 8),
                child: Column(
                  children: [
                    Row(children: [Text(" House : "),Text(characterDetails.house)],),
                    SizedBox(height: 5,),
                    Row(children: [Text(" alive : "),Text(characterDetails.alive.toString())],),
                                        SizedBox(height: 5,),

                    Row(children: [Text(" eyeColour : "),Text(characterDetails.eyeColour)],),
                                        SizedBox(height: 5,),

                    Row(children: [Text(" hairColour : "),Text(characterDetails.hairColour)],),
                                        SizedBox(height: 5,),

                    characterDetails.patronus==""?Container():Row(children: [Text("5. patronus : "),Text(characterDetails.patronus)],),
                                        SizedBox(height: 5,),


                    Row(children: [Text(" hogwartsStudent : "),Text(characterDetails.hogwartsStudent.toString())],),
                                        SizedBox(height: 5,), 

                    Row(children: [Text(" hogwartsStaff : "),Text(characterDetails.hogwartsStaff.toString())],),
                                        SizedBox(height: 5,),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 480,
            left: 60,
            child: Align(
      alignment: Alignment.center,
      child: Container(height: 70,width: 300,decoration: BoxDecoration(color: Colors.brown,
      borderRadius: BorderRadius.circular(10)
      ),child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left:18.0),
          child: Row(
            children: [
              Text("Actor name :  ",style: TextStyle(color: Colors.white,fontSize: 20),),
              Text(characterDetails.actor,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),)
    ),
    

          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0,top: 10),
            child: Align(alignment: Alignment.topLeft,child: FlatButton(onPressed: ()=>Get.off(home()), child: Icon(Icons.arrow_back),)),
          )
        ],
      ),
    ));
  }
}