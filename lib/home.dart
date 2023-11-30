import 'package:flutter/material.dart';
import 'package:wordpair_generator/app_body.dart';
import 'package:wordpair_generator/favorite_words.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  List<String> randomWordsList = [
    'color',
    'food',
    'trees',
    'lifestyle',
    'airport',
    'cars',
    'shopping',
    'work',
    'computers',
    'gadget',
    'video games',
    'fruits',
    'veggies',
    'cosmetics',
    'dance',
    'swimming',
    'football',
    'books',
    'stroller',
    'nappy',
    'blanket',
    'pets'
  ];
  Set<String> favorites = {};
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.black,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
        ),
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                title: const Text('Random Words Generator'),
                actions: <Widget>[
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Builder(
                            builder: (BuildContext context) {
                              return FavoriteWords(favorites: favorites);
                            },
                          );
                        }));
                      },
                      icon: const Icon(Icons.list))
                ]),
            body: Body(wordList: randomWordsList, favorites: favorites)));
  }
}
