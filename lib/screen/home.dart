import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_anything/components/task_card.dart';
import 'package:learn_anything/screen/calender.dart';
import 'package:learn_anything/screen/profile.dart';

import 'create_task/create_task.dart';

final selectedIndexProvider = StateProvider((ref) => 0);

class HomeScreen extends ConsumerWidget {
  final List<Widget> screen = <Widget>[
    Body(),
    Calender(),
    Text('message'),
  ];
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: const Icon(Icons.account_circle))),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      floatingActionButton: watch(selectedIndexProvider).state == 1
          ? FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateTaskScreen()));
              },
            )
          : null,
      drawer: MyDrawer(),
      body: screen[watch(selectedIndexProvider).state],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Color(0xFFF7F7F7),
        backgroundColor: Color(0XFFF15A42),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined), label: "Calender"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "Message"),
        ],
        currentIndex: watch(selectedIndexProvider).state,
        onTap: (index) => context.read(selectedIndexProvider).state = index,
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: Text('got to profile'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final tasks = context.watch<List<Task>>();
    return SizedBox.expand(
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.black),
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          color: Color(0xFFe8edf5),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Hi,',
                  style: TextStyle(fontSize: 24, color: Colors.red[300]),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Current Learning',
                          style: TextStyle(fontSize: 24),
                          textAlign: TextAlign.left),
                      Container(
                        child: TaskCard(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
