import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  // TODO: implement key
  const MyApp({super.key});

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
            body: generateListOFWordPair));
  }

  Widget get generateListOFWordPair {
    final List<WordPair> randomWordPairs = <WordPair>[];

    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, item) {
          if (item.isOdd) {
            return const Divider();
          }

          final index = item ~/ 2;

          if (index >= randomWordPairs.length) {
            randomWordPairs.addAll(generateWordPairs().take(10));
          }
          );
        });
  }
}

Widget wordPairGenerator() {
  final wordPair = WordPair.random();
  return Text(wordPair.asPascalCase);
}
