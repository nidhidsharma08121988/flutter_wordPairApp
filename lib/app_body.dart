import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  List<String> wordList;
  Set<String> favorites;
  Body({super.key, this.wordList = const [], this.favorites = const {}});
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    bool isFavoriteWord(String word) {
      return widget.favorites.contains(word);
    }

    void toggleFavorites(String word) {
      if (isFavoriteWord(word)) {
        widget.favorites.remove(word);
      } else {
        widget.favorites.add(word);
      }
    }

    return ListView.separated(
        padding: const EdgeInsets.all(1),
        itemCount: widget.wordList.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          var listTile = ListTile(
            title: listRow(index, isFavoriteWord, toggleFavorites),
          );
          return listTile;
        });
  }

  Row listRow(int index, bool Function(String word) isFavoriteWord,
      void Function(String word) toggleFavorites) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.wordList[index]),
          IconButton(
            icon: Icon(
              isFavoriteWord(widget.wordList[index])
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: isFavoriteWord(widget.wordList[index]) ? Colors.red : null,
            ),
            onPressed: () {
              setState(() {
                toggleFavorites(widget.wordList[index]);
              });
            },
          )
        ]);
  }
}
