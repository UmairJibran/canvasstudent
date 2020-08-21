import 'package:canvasstudent/data/dummy.dart';
import 'package:canvasstudent/widgets/home_grid_tile.dart';
import 'package:canvasstudent/widgets/home_list_tile.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          Container(
            height: MediaQuery.of(context).size.height * 0.226,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeGridTile(
                  color: subjects[0]["color"],
                  subject: subjects[0]["subjectName"],
                  subjectCode: subjects[0]["subjectCode"],
                  subjectID: 0,
                ),
                HomeGridTile(
                  color: subjects[1]["color"],
                  subject: subjects[1]["subjectName"],
                  subjectCode: subjects[1]["subjectCode"],
                  subjectID: 1,
                ),
              ],
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
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: ListView(
              children: [
                HomeListTile(
                  color: subjects[0]["color"],
                  subjectTitle: subjects[0]["subjectName"],
                  groupFor: "Term 2",
                  groupName: "New Students",
                ),
                HomeListTile(
                  color: subjects[1]["color"],
                  subjectTitle: subjects[1]["subjectName"],
                  groupFor: "Term 3",
                  groupName: "New Students",
                ),
                HomeListTile(
                  color: subjects[2]["color"],
                  subjectTitle: subjects[2]["subjectName"],
                  groupFor: "Term 1",
                  groupName: "New Students",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
