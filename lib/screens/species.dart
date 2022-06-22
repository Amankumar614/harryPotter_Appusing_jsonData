import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harrypotter/screens/allHumans.dart';

class allSpecies extends StatefulWidget {
  // const allSpecies({ Key? key }) : super(key: key);
  final fulldata;
  allSpecies({required this.fulldata});

  @override
  State<allSpecies> createState() => _allSpeciesState();
}

class _allSpeciesState extends State<allSpecies> {
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
          box(widget.fulldata, "human",Colors.red,"human"),
          box(widget.fulldata, "werewolf",Colors.blue,"Werewolf"),
          box(widget.fulldata, "cat",Colors.yellow,"Cat"),
          box(widget.fulldata,"half-giant",Colors.green,"Half-gaint")
        ],
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
      ),
    );
  }
}

Widget box(var fulldata ,String specificData,Color color,String title){
  return InkWell(
            onTap: () => Get.to(
                allHumans(data: fulldata, specificData: specificData)),
            child: Container(

              decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(12)),
              child: Center(child: Text(title,style: TextStyle(fontSize: 20),)),
            ),
          );
}