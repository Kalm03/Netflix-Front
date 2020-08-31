import 'package:flutter/material.dart';
import 'home.dart';
import 'search.dart';

void main() => runApp(MaterialApp(
      home: Main(),
    ));

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int selectedPage = 0;
  final pageOptions = [Home(), Search(), Text('3'), Text('4'), Text('5')];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: pageOptions[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey[600],
        currentIndex: selectedPage,
        onTap: (int index) {
          setState(() {
            selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.calendar_today_outlined),
            title: Text('Coming Soon'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.download_sharp),
            title: Text('Downloads'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.more_outlined),
            title: Text('More'),
          ),
        ],
      ),
    );
  }
}
