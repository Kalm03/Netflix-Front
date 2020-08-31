import 'package:flutter/material.dart';
import 'lists.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child:
              FlatButton(onPressed: () {}, child: Image.asset('assets/N.png')),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FlatButton(
              onPressed: () {},
              child: Text(
                'TV Shows',
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'Movies',
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'My List',
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          MainView(),
          Scroll(
            title: 'My List',
          ),
          Scroll(
            title: 'Trending Now',
          ),
          Originals(),
          Scroll(
            title: 'Popular on Netflix',
          ),
          Scroll(
            title: 'New Releases',
          ),
        ],
      ),
    );
  }
}
