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
            body: Column(
              children: [
                wordPairGenerator(),
                wordPairGenerator(),
                wordPairGenerator(),
                wordPairGenerator(),
              ],
            )));
  }
}

Widget wordPairGenerator() {
  final wordPair = WordPair.random();
  return Text(wordPair.asPascalCase.toString().trim());
}
