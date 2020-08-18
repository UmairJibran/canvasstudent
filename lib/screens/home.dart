import 'package:canvasstudent/screens/home_screens/calendar.dart';
import 'package:canvasstudent/screens/home_screens/chats.dart';
import 'package:canvasstudent/screens/home_screens/dashboard.dart';
import 'package:canvasstudent/screens/home_screens/todos.dart';
import 'package:flutter/material.dart';

import 'home_screens/notifications.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> _widgets = <Widget>[
    Dashboard(),
    Calendar(),
    Todos(),
    Notifications(),
    Chats(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.blueGrey,
        title: Text("Dashboard"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: _widgets.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text(" "),
            activeIcon: Icon(
              Icons.library_books,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text(" "),
            activeIcon: Icon(
              Icons.calendar_today,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.playlist_add_check),
            activeIcon: Icon(
              Icons.playlist_add_check,
              size: 35,
            ),
            title: Text(" "),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            activeIcon: Icon(
              Icons.notifications,
              size: 35,
            ),
            title: Text(" "),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            activeIcon: Icon(
              Icons.chat_bubble_outline,
              size: 35,
            ),
            title: Text(" "),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
