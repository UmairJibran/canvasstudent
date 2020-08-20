import 'package:canvasstudent/data/dummy.dart';
import 'package:canvasstudent/widgets/assignment_tile.dart';
import 'package:flutter/material.dart';

class Todos extends StatelessWidget {
  static const String route = "/courseDetail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 10, top: 10),
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Due Tomorrow",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (_, index) {
                  return AssignmentTile(
                    assignments[index]["assignmentTitle"],
                    subjectName: assignments[index]["subject"],
                    color: assignments[index]["color"],
                    icon: assignments[index]["icon"],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "No Due Today",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (_, index) {
                  return AssignmentTile(
                    assignments[index]["assignmentTitle"],
                    subjectName: assignments[index]["subject"],
                    icon: assignments[index]["icon"],
                    color: assignments[index]["color"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
