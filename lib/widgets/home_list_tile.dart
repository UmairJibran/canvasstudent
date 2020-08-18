import 'package:flutter/material.dart';

class HomeListTile extends StatelessWidget {
  final Color color;
  final String subjectTitle;
  final String groupName;
  final String groupFor;

  const HomeListTile({
    this.color,
    this.subjectTitle,
    this.groupName,
    this.groupFor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      margin: EdgeInsets.only(top: 10, left: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        color: Colors.white,
        boxShadow: [
          new BoxShadow(
            blurRadius: 0,
            spreadRadius: 0,
            offset: Offset.lerp(Offset(5, 0), Offset(0, 0), 2),
            color: color,
          ),
          new BoxShadow(
            blurRadius: 0,
            spreadRadius: 0,
            offset: Offset.lerp(Offset(0, -5), Offset(0, 0), 2),
            color: Colors.black12,
          ),
        ],
      ),
      child: InkWell(
        onTap: () {},
        child: ListTile(
          title: Text(
            groupName,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                subjectTitle,
                style: TextStyle(
                  color: color,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                groupFor,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
