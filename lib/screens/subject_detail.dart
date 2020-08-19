import 'package:flutter/material.dart';

class SubjectDetail extends StatelessWidget {
  static const String route = "/detailPage";
  final Color color = Colors.indigo;
  final String subjectName = "Biology 101";
  final String subjectCode = "Bio 101";
  final String semester = "Spring 2016";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                color: color,
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          subjectCode,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      subjectName,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      semester,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                margin: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                child: ListTile(
                  title: Text("Home"),
                  subtitle: Text("Recent Activity"),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
              ListTile(
                title: Text("Announcments"),
                onTap: () {},
                leading: Icon(
                  Icons.announcement,
                  color: color,
                ),
              ),
              ListTile(
                title: Text("Assignments"),
                onTap: () {},
                leading: Icon(
                  Icons.assignment,
                  color: color,
                ),
              ),
              ListTile(
                title: Text("Discussions"),
                onTap: () {},
                leading: Icon(
                  Icons.chat_bubble_outline,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
