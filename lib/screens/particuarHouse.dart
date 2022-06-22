import 'package:flutter/material.dart';

import '../Models/charaModel.dart';


class particularHouse extends StatefulWidget {
  final houseData;
  final houseName;
  particularHouse({required this.houseData, required this.houseName});

  @override
  State<particularHouse> createState() => _particularHouseState();
}

class _particularHouseState extends State<particularHouse> {
  @override
  Widget build(BuildContext context) {
  late var item = widget.houseData.data as AsyncSnapshot<List<characterDataModel>>;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.houseName),
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 1/1.7,mainAxisSpacing: 10,crossAxisSpacing: 5),
          itemCount: widget.houseData.length,
          itemBuilder: (context, i) {
            print(widget.houseData[i].house);
            return GridTile(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Align(alignment: Alignment.bottomCenter,child: Text(widget.houseData[i].name,style: TextStyle(color: Colors.white,backgroundColor: Colors.black45),),),
                                    height: 270,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(12)),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                widget.houseData[i].image.toString()),
                                            fit: BoxFit.fill)),
                                  ),
                ));
          },
        ));
  }
}
