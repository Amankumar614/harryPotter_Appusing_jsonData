import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:harrypotter/screens/HufflepuffList.dart';
import 'package:harrypotter/screens/RavenclawList.dart';
import 'package:harrypotter/screens/SlytherinList.dart';
import 'package:harrypotter/screens/gryffindorsList.dart';
import 'package:flutter/services.dart' as rootBundle;
import '../Models/charaModel.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

    Future<List<characterDataModel>>ReadJsonData()async{
    final jsonData=await rootBundle.rootBundle.loadString('assets/person.json');
    // convert the data into list
    final list = json.decode(jsonData) as List<dynamic>; 
    // print(list);
    return list.map((e) => characterDataModel.fromJson(e)).toList();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.circle,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context,data){
          if (data.hasError) {
            print("error $data");
           return Center(child: Text("error ${data.error}"),);
          }
          else if(data.hasData){
           return    SingleChildScrollView(
             child: Column(
                     children: [
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search,color: Colors.black,),
                    labelText: 'Enter Name',
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.grey)
                 ,                  borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),),
                     SizedBox(height: 19,),
                     Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left:15.0),
                  child: Text("Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ],
                     ),
                     Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: 
              
              const [
                Text("Gryffindors",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                
                Text("See All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey),),
              ],),
                 
                     ),
                     Container(height: 200,child: gryffindors(data:data)),
                     Padding(
              padding: const EdgeInsets.all(08.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                
                const [
                  Text("Slytherin",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  
                  Text("See All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey),),
                ],),
                     ),
                     Container(height: 200,child: Slytherin(data:data)),
                     Padding(
              padding: const EdgeInsets.all(08.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                
                const [
                  Text("Hufflepuff",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  
                  Text("See All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey),),
                ],),
                     ),
                     Container(height: 200,child: Hufflepuff(data:data)),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                
                const [
                  Text("Ravenclaw",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  
                  Text("See All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey),),
                ],),
                     ),
                     Container(height: 200,child: Ravenclaw(data:data)),
                     SizedBox(height: 20,)
                     ],
                   ),
           );

          }
          else{
            return Container( height:900,child: Center(child: CircularProgressIndicator(),));
          }
        }

      //   child: Column(
      //     children: [
      //       SizedBox(height: 10,),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: TextField(
                
      //         decoration: InputDecoration(
      //           prefixIcon: Icon(Icons.search,color: Colors.black,),
      //             labelText: 'Enter Name',
      //             enabledBorder: OutlineInputBorder(
      //               borderSide: const BorderSide(width: 1, color: Colors.grey)
      // ,                  borderRadius: BorderRadius.circular(15),
      //             ),
      //             focusedBorder: OutlineInputBorder(
      //               borderSide: const BorderSide(width: 1, color: Colors.grey),
      //               borderRadius: BorderRadius.circular(15),
      //             )),
      //       ),),
      //     SizedBox(height: 19,),
      //     Row(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.only(left:15.0),
      //           child: Text("Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      //         ),
      //       ],
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: 
            
      //       [
      //         Text("Gryffindors",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              
      //         Text("See All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey),),
      //       ],),
      
      //     ),
      //     Container(height: 200,child: gryffindors())
      //     ],
      //   ),
      ),
    );
  }
}
