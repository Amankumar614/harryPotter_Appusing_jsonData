import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/services.dart' as rootBundle;
import 'package:harrypotter/widgets/jsonHasData.dart';
import 'package:harrypotter/screens/particuarHouse.dart';
import '../Models/charaModel.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  Future<List<characterDataModel>> ReadJsonData() async {
    final jsonData =
        await rootBundle.rootBundle.loadString('assets/person.json');
    // convert the data into list
    final list = json.decode(jsonData) as List<dynamic>;
    return list.map((e) => characterDataModel.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
          builder: (context, data) {
            if (data.hasError) {
              return Center(
                child: Text("error ${data.error}"),
              );
            } else if (data.hasData) {
              return jsonHasData(data: data,);
            } else {
              return Container(
                  height: height*1,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ));
            }
          }),
    );
  }
}
