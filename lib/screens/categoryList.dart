import 'package:flutter/material.dart';

class categoryList extends StatelessWidget {
  const categoryList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Center(child: Text("House")),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Center(child: Text("Student")),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Center(child: Text("Staff")),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Center(child: Text("Species")),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Center(child: Text("Still alive")),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                );
  }
}