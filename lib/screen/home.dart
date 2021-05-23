import 'package:flutter/material.dart';

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
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/task');
                        },
                        child: Container(
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Color(0xFFF7F7F7)),
                          //     borderRadius: BorderRadius.all(Radius.circular(8))),
                          width: 120,
                          height: 150,
                          color: Color(0xFFF7F7F7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [Icon(Icons.pie_chart_outline)],
                              ),
                              Container(
                                child: Text('title'),
                              ),
                              Container(
                                child: Container(
                                  color: Color(0xFFe8edf5),
                                  child: Text(
                                    'CS',
                                    style: TextStyle(color: Color(0xFFb2e0ac)),
                                  ),
                                ),
                              ),
                              Container(
                                child: Container(
                                  color: Color(0xFFF15A42),
                                  child: Text('Today, 10AM - 11AM'),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined), label: "Calender"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.message_outlined), label: "Message"),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.account_balance_outlined), label: "Profile"),
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
          }
        }),
      ),
    );
  }
}
