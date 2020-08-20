import 'package:flutter/material.dart';

class AssignmentTile extends StatelessWidget {
  final String assignmentName;
  final String subjectName;
  final Color color;
  final IconData icon;

  const AssignmentTile(
    this.assignmentName, {
    this.icon,
    this.subjectName,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        title: Text(assignmentName),
        subtitle: Text(
          subjectName,
          style: TextStyle(
            color: color,
          ),
        ),
        leading: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }
}
