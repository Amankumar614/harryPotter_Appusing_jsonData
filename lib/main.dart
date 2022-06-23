import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:harrypotter/Models/charaModel.dart';
import 'package:harrypotter/widgets/homeScreen.dart';
import 'package:flutter/services.dart' as rootBundle;

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ,
      home: home(),
    );
  }

  Future<List<characterDataModel>>ReadJsonData()async{
    final jsonData=await rootBundle.rootBundle.loadString('harry_potter_content.json');
    // convert the data into list
    final list = json.decode(jsonData) as List<dynamic>; 
    return list.map((e) => characterDataModel.fromJson(e)).toList();

  }

}