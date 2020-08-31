import 'package:flutter/material.dart';
import 'movie_card.dart';

final List<MovieCard> cards = [
  MovieCard(
    name: 'Brooklyn Nine-Nine',
    img: 'assets/b99.jpg',
    isOg: false,
  ),
  MovieCard(
    name: 'The Witcher',
    img: 'assets/witcher.jpg',
    isOg: true,
  ),
  MovieCard(
    name: 'Brooklyn Nine-Nine',
    img: 'assets/b99.jpg',
    isOg: false,
  ),
  MovieCard(
    name: 'Brooklyn Nine-Nine',
    img: 'assets/b99.jpg',
    isOg: false,
  ),
  MovieCard(
    name: 'Brooklyn Nine-Nine',
    img: 'assets/b99.jpg',
    isOg: false,
  ),
  MovieCard(
    name: 'The Witcher',
    img: 'assets/witcher.jpg',
    isOg: true,
  ),
  MovieCard(
    name: 'Brooklyn Nine-Nine',
    img: 'assets/b99.jpg',
    isOg: false,
  ),
  MovieCard(
    name: 'Brooklyn Nine-Nine',
    img: 'assets/b99.jpg',
    isOg: false,
  ),
  MovieCard(
    name: 'The Witcher',
    img: 'assets/witcher.jpg',
    isOg: true,
  ),
  MovieCard(
    name: 'The Witcher',
    img: 'assets/witcher.jpg',
    isOg: true,
  ),
  MovieCard(
    name: 'Brooklyn Nine-Nine',
    img: 'assets/b99.jpg',
    isOg: false,
  ),
  MovieCard(
    name: 'Brooklyn Nine-Nine',
    img: 'assets/b99.jpg',
    isOg: false,
  ),
  MovieCard(
    name: 'Brooklyn Nine-Nine',
    img: 'assets/b99.jpg',
    isOg: false,
  ),
];

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('${cards[0].name}'),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                print('list');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    'My List',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
            RaisedButton(
              onPressed: () {
                print('play');
              },
              child: Row(
                children: [Icon(Icons.play_arrow), Text('Play')],
              ),
            ),
            GestureDetector(
              onTap: () {
                print('info');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                  Text(
                    'Info',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
          ],
        ),
        height: 500,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('${cards[0].img}'))),
      ),
    );
  }
}

class Scroll extends StatelessWidget {
  final String title;

  Scroll({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
          Container(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cards.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  child: GestureDetector(
                      onTap: () => print('${cards[index].name}'),
                      child: Image.asset('${cards[index].img}')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Originals extends StatelessWidget {
  final String title = 'Netflix Originals';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
          Container(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cards.length,
              itemBuilder: (BuildContext context, int index) {
                if (cards[index].isOg) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    child: GestureDetector(
                        onTap: () => print('${cards[index].name}'),
                        child: Image.asset('${cards[index].img}')),
                  );
                } else {
                  return SizedBox(
                    height: 0,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
