import 'package:flutter/material.dart';

import '../Models/charaModel.dart';

class SearchBar extends StatefulWidget {
  final wholeList;
  SearchBar({required this.wholeList});
  // const SearchBar({ Key? key }) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

TextEditingController searchController = TextEditingController();

class _SearchBarState extends State<SearchBar> {
  late List sList = widget.wholeList.data as List<characterDataModel>;
  late List<dynamic> s2List=sList;
  List suggestion=[];
  searchCharacterByName(String query) {
    suggestion = sList.where((query) {
      final name = query.name.toLowerCase();
      final input = query.toLowerCase();
      return name.contains(input);
    }).toList();
    setState(() {
      print("enter in the");
      s2List = suggestion;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("suggestion $suggestion");
    return Scaffold(

      body:

      SafeArea(
        child: Column(

          children: [

            Container(
              height: 50,
              child: TextFormField(
                controller: searchController,
                onChanged: searchCharacterByName(searchController.text),
                // onSubmitted: searchCharacterByName(searchController.text),
                // onTap: () => setState(() {
                //   // search=true;
                //   // print("value of bool $search");
                // }),
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
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 500,
                child: ListView.builder(
                  itemBuilder: (context, index) => ListTile(
                    title: Text(s2List[index].name),
                  ),
                  itemCount: s2List.length,
                )),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// import '../Models/charaModel.dart';

// class SearchBar extends StatefulWidget {
//   final wholeList;
//   SearchBar({required this.wholeList});

//   @override
//   State<SearchBar> createState() => _SearchBarState();
// }

// TextEditingController searchController = TextEditingController();

// class _SearchBarState extends State<SearchBar> {
//   bool search = false;

//   late List sList = widget.wholeList.data as List<characterDataModel>;
//   late List<dynamic> s2List = sList;

//   searchCharacterByName(String query) {
//     final suggestion = sList.where((book) {
//       final name = book.name.toLowerCase();
//       final input = query.toLowerCase();

//       return name.contains(input);
//     }).toList();
//     setState(() {

//       // s2List=suggestion;
//     });
//   }

//   List AmanList = [];
//   // var book;
//   @override
//   twoFunction(String enterName) {
//     searchCharacterByName(enterName);
//     setState(() {
//       AmanList = s2List;
//       search = true;
//     });
//   }

//   Widget build(BuildContext context) {
//     return Column(children: [
//       TextField(
//         controller: searchController,
//         onChanged: twoFunction(searchController.text),
//         onTap: () => setState(() {
//           search = true;
//         }),
//         decoration: InputDecoration(
//             prefixIcon: const Icon(
//               Icons.search,
//               color: Colors.black,
//             ),
//             labelText: 'Enter Name',
//             enabledBorder: OutlineInputBorder(
//               borderSide: const BorderSide(width: 1, color: Colors.grey),
//               borderRadius: BorderRadius.circular(15),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderSide: const BorderSide(width: 1, color: Colors.grey),
//               borderRadius: BorderRadius.circular(15),
//             )),
//       ),
//       search == true
//           ? Container(
//               height: 200,
//               child: ListView.builder(
//                 itemCount: AmanList.length,
//                 itemBuilder: (context, index) {
//                   var book = s2List[index];
//                   return ListTile(title: Text(AmanList[index].name));
//                 },
//               ),
//             )
//           : Container()
//     ]);
//   }
// }
