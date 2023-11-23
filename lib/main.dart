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
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];

    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(child: wordPairGenerator()),
          );
        });
  }
}

Widget wordPairGenerator() {
  final wordPair = WordPair.random();
  return Text(wordPair.asPascalCase);
}
