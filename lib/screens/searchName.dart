
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harrypotter/Models/charaModel.dart';
import 'package:harrypotter/screens/characterDescription.dart';
import 'package:harrypotter/widgets/homeScreen.dart';

var aman;

class SearchBar extends StatefulWidget {
  final wholeList;
  SearchBar({required this.wholeList});

  @override
  State<SearchBar> createState() => _SearchBarState();
}



class _SearchBarState extends State<SearchBar> {
  late List sList = widget.wholeList.data as List<characterDataModel>;
  late List<dynamic> s2List = sList;

  @override
  Widget build(BuildContext context) {
    aman = sList;
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Name"),
        actions: [IconButton(onPressed: () {showSearch(context: context, delegate: NameSearch());}, icon: Icon(Icons.search))],
      ),
    );
  }
}

class NameSearch extends SearchDelegate<characterDataModel> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed: ()=>query="", icon: Icon(Icons.clear))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: ()=>Get.to(home()), icon: Icon(Icons.arrow_back_outlined));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Text(query));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List amanList = [];
    amanList = aman;
    final listItem = query.isEmpty
        ? amanList
        : amanList.where((element) => element.name.toLowerCase().startsWith(query.toLowerCase())).toList();
    return listItem.isEmpty
        ? Center(
            child: Text("No Data"),
          )
        : ListView.builder(
            itemCount: listItem.length,
            itemBuilder: (context, i) {
              return ListTile(

                onTap: ()=>Get.to(characterDescription(characterDetails: listItem[i])),
                title: Text(listItem[i].name),
              );
            },
          );
  }
}
