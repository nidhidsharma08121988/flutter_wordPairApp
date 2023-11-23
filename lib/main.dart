import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // TODO: implement key
  MyApp({super.key});

  final wordPair = WordPair.random();

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
            body: Center(
              child: Text(wordPair.asPascalCase),
            )));
  }
}
