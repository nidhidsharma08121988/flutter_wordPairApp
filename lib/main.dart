import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // TODO: implement key
  MyApp({super.key});

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
              title: const Text('Word Pair Generator'),
            ),
            body: ListView(
              padding: const EdgeInsets.all(1),
              children: generateListOFWordPair,
            )));
  }

  List<Widget> get generateListOFWordPair {
    return <Widget>[
      Container(
        height: 50,
        color: Colors.amber[600],
        child: Center(child: wordPairGenerator()),
      ),
      Container(
        height: 50,
        color: Colors.amber[500],
        child: Center(child: wordPairGenerator()),
      ),
      Container(
        height: 50,
        color: Colors.amber[100],
        child: Center(child: wordPairGenerator()),
      ),
    ];
  }
}

Widget wordPairGenerator() {
  final wordPair = WordPair.random();
  return Text(wordPair.asPascalCase);
}
