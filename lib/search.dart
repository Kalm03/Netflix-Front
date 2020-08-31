import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 30,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 30,
                  color: Colors.grey[800],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[600],
                ),
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
