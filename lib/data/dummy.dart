import 'package:flutter/material.dart';

final List subjects = [
  {
    "id": "0001",
    "subjectName": "Biology",
    "subjectCode": "BIO 101",
    "color": Colors.blueAccent,
  },
  {
    "id": "0002",
    "subjectName": "Chemistry",
    "subjectCode": "CHEM 101",
    "color": Colors.green,
  },
  {
    "id": "0003",
    "subjectName": "Mathematics",
    "subjectCode": "MATH 101",
    "color": Colors.orange,
  },
  {
    "id": "0004",
    "subjectName": "Music Theory",
    "subjectCode": "MUS 101",
    "color": Colors.indigo,
  },
  {
    "id": "0005",
    "subjectName": "Psychology",
    "subjectCode": "PSY 101",
    "color": Colors.red,
  },
  {
    "id": "0006",
    "subjectName": "American Literature 401",
    "subjectCode": "LIT 401",
    "color": Colors.deepPurple,
  },
];

final List<Map<String, dynamic>> assignments = [
  {
    "assignmentTitle": "Biology 101 Quiz",
    "subject": "Biology 101",
    "color": Colors.blue,
    "icon": Icons.airplanemode_active,
  },
  {
    "assignmentTitle": "Shakespeare Sonnets",
    "subject": "American Literature 401",
    "color": Colors.purple,
    "icon": Icons.assignment,
  },
  {
    "assignmentTitle": "Group Assignment",
    "subject": "Music Theory",
    "color": Colors.yellow[700],
    "icon": Icons.music_note,
  },
];
