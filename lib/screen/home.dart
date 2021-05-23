import 'package:flutter/material.dart';
import 'package:learn_anything/components/TaskCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      body: DefaultTextStyle(
        style: TextStyle(color: Colors.black),
        child: Container(
          width: 300,
          padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
          color: Color(0xFFe8edf5),
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Hi,',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.left,
                ),
                Container(
                  child: Column(
                    children: [
                      Text('Current Learning',
                          style: TextStyle(fontSize: 24),
                          textAlign: TextAlign.left),
                      TaskCard()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Color(0xFF979797),
        backgroundColor: Color(0XFFF15A42),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined), label: "Calender"),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "Add",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "Message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined), label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() {
          _selectedIndex = index;
          switch (index) {
            case 0:
              {
                Navigator.pushNamed(context, '/home');
              }
              break;
            case 1:
              {
                Navigator.pushNamed(context, '/task');
              }
              break;
            case 2:
              {
                Navigator.pushNamed(context, '/create-task');
              }
              break;
            case 3:
              {
                // Navigator.pushNamed(context, '/message');
              }
              break;
            case 4:
              {
                Navigator.pushNamed(context, '/profile');
              }
              break;
          }
        }),
      ),
    );
  }
}
