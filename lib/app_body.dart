import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class AppBody extends StatefulWidget {
  const AppBody({super.key});
  @override
  BodyState createState() => BodyState();
}

class BodyState extends State<AppBody> {
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
    bool isFavoriteWord(String word) {
      return favorites.contains(word);
    }

    void toggleFavorites(String word) {
      if (isFavoriteWord(word)) {
        favorites.remove(word);
      } else {
        favorites.add(word);
      }
    }

    return ListView.separated(
        padding: const EdgeInsets.all(1),
        itemCount: randomWordsList.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(randomWordsList[index]),
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: isFavoriteWord(randomWordsList[index])
                          ? Colors.red[400]
                          : Colors.blue[40],
                    ),
                    onPressed: () {
                      toggleFavorites(randomWordsList[index]);
                    },
                  )
                ]),
          );
        });
  }
}
