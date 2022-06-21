import 'package:flutter/material.dart';

import '../Models/charaModel.dart';

class SearchBar extends StatefulWidget {
  final wholeList;
  SearchBar({required this.wholeList});

  @override
  State<SearchBar> createState() => _SearchBarState();
}
TextEditingController searchController = TextEditingController();

class _SearchBarState extends State<SearchBar> {

      late List sList = widget.wholeList.data as List<characterDataModel>;  
        late  List<dynamic> s2List = sList;
      

      searchCharacterByName(String query){
    final suggestion=sList.where((book) {
      final name=book.name.toLowerCase();
      final input=query.toLowerCase();
      return name.contains(input) ;
    }).toList();
    setState(() {
      print("enter in the");
      s2List=suggestion;
      // print("hello ${s2List[0].name}");
    });
    
  }
  var book;
  @override
  twoFunction(String enterName){
    searchCharacterByName(enterName);
    setState(() {
                s2List;
              });
  }
  
  Widget build(BuildContext context) {

    return Column(
      children: [
        TextField(
          controller: searchController,
          onSubmitted: twoFunction(searchController.text),
          
          decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              labelText: 'Enter Name',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(15),
              )),
        ),
        s2List.length==1?
        ListView.builder(
          itemCount: s2List.length,
          itemBuilder: (context, index) {
            print("hello length${s2List.length}");
            book= s2List[index];
            print("this is the bookon $book");

            
            return 
             ListTile(title: Text(book.name) );

            
          },
        )
        :Container(),
      ]
    );
  }
  
}
