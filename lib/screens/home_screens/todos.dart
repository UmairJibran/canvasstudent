import 'package:canvasstudent/data/dummy.dart';
import 'package:canvasstudent/widgets/assignment_tile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Todos extends StatefulWidget {
  static const String route = "/courseDetail";

  @override
  _TodosState createState() => _TodosState();
}

class _TodosState extends State<Todos> {
  bool loadingTodos = true;
  List<Map<String, dynamic>> todos = [];

  void loadTodos() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    var snapshot = firebaseFirestore.collection("todos").get();
    await snapshot.then((value) {
      value.docs.forEach((element) {
        var todo = element.data();
        todos.add(todo);
      });
    }).then((_) {
      setState(() {
        loadingTodos = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    loadTodos();
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
            loadingTodos
                ? CircularProgressIndicator()
                : Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: todos.length,
                      itemBuilder: (_, index) {
                        return AssignmentTile(
                          todos[index]["name"],
                          subjectName: todos[index]["subjectName"],
                          color: colors[index % 3],
                          icon: Icons.assignment,
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
            loadingTodos
                ? CircularProgressIndicator()
                : Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: todos.length,
                      itemBuilder: (_, index) {
                        return AssignmentTile(
                          todos[index]["name"],
                          subjectName: todos[index]["subjectName"],
                          color: colors[index % 3],
                          icon: Icons.assignment,
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
