import 'package:flutter/material.dart';

class FavoriteWords extends StatefulWidget {
  final Set<String> favorites;
  const FavoriteWords({super.key, this.favorites = const {}});

  @override
  FavoriteWordsState createState() => FavoriteWordsState();
}

class FavoriteWordsState extends State<FavoriteWords> {
  @override
  Widget build(BuildContext context) {
    Iterable<ListTile> tiles = widget.favorites.map((tile) {
      return ListTile(
        title: Text(tile),
      );
    });
    List<Widget> dividedTiles =
        ListTile.divideTiles(tiles: tiles, context: context).toList();
    return Scaffold(
        appBar: AppBar(title: const Text('Saved favorites')),
        body: ListView(children: [...dividedTiles]));
  }
}
