import 'package:canvasstudent/widgets/home_grid_tile.dart';
import 'package:canvasstudent/widgets/home_list_tile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool loadingSubjects = true;
  bool loadingGroups = true;
  List<Map<String, dynamic>> subjects = [];
  List<Map<String, dynamic>> studentGroups = [];

  void loadSubjects() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    var snapshot = firebaseFirestore.collection("subjects").get();
    await snapshot.then((value) {
      value.docs.forEach((element) {
        var subject = element.data();
        subjects.add(subject);
      });
    }).then((_) {
      setState(() {
        loadingSubjects = false;
      });
    });
  }

  void loadGroups() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    var snapshot = firebaseFirestore.collection("student_groups").get();
    await snapshot.then((value) {
      var docs = value.docs;
      docs.forEach((element) {
        var group = element.data();
        studentGroups.add(group);
      });
    }).then((_) {
      setState(() {
        loadingGroups = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    loadSubjects();
    loadGroups();
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Courses",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          loadingSubjects
              ? CircularProgressIndicator()
              : Container(
                  height: MediaQuery.of(context).size.height * 0.226,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ListView.separated(
                    separatorBuilder: (_, __) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return HomeGridTile(
                        color: Colors.blue,
                        subject: subjects[index]["subjectName"],
                        subjectCode: subjects[index]["subjectCode"],
                      );
                    },
                    itemCount: subjects.length,
                  ),
                ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Groups",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          loadingGroups
              ? CircularProgressIndicator()
              : Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: ListView.separated(
                    itemBuilder: (_, index) {
                      return HomeListTile(
                        color: Colors.amber,
                        groupFor: studentGroups[index]["groupFor"],
                        groupName: studentGroups[index]["groupName"],
                        subjectTitle: studentGroups[index]["subjectTitle"],
                      );
                    },
                    separatorBuilder: (_, __) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                      );
                    },
                    itemCount: studentGroups.length,
                  ),
                ),
        ],
      ),
    );
  }
}
