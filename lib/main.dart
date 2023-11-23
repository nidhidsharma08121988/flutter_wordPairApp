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

          int index = item ~/ 2;

          if (index >= randomWordPairs.length && index < 99) {
            randomWordPairs.addAll(generateWordPairs().take(10));
          }

          return buildRow(randomWordPairs[index]);
        });
  }

  ListTile buildRow(WordPair wordPair) {
    return ListTile(
      title: Text(wordPair.asPascalCase),
    );
  }
}
