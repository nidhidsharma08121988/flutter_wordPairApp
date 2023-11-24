import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
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
            body: const AppBody()));
  }
}

class AppBody extends StatefulWidget {
  const AppBody({super.key});
  @override
  BodyState createState() => BodyState();
}

class BodyState extends State<AppBody> {
  Widget? get generateListOFWordPair {
    final List<WordPair> randomWordPairs = <WordPair>[];

    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, item) {
          try {
            if (item.isOdd) {
              return const Divider();
            }

            int index = item ~/ 2;

            if (index >= randomWordPairs.length && index < 89) {
              randomWordPairs.addAll(generateWordPairs().take(10));
            }
            if (index < 89) {
              return buildRow(randomWordPairs[index]);
            }
            return null;
          } catch (error) {
            return null;
          }
        });
  }

  ListTile buildRow(WordPair wordPair) {
    return ListTile(
      title: Text(wordPair.asPascalCase),
    );
  }

  @override
  Widget build(BuildContext context) {
    return generateListOFWordPair ?? Container();
  }
}
