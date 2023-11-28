import 'package:flutter/material.dart';
import 'app_body.dart';

void main() => runApp(const MyApp());

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

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
                title: const Text('Random Words Generator'),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.list),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const FavoriteScreen()),
                      );
                    },
                  )
                ]),
            body: const AppBody()));
  }
}
