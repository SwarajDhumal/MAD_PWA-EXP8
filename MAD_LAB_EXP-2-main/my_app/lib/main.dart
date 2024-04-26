import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Recommender',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MusicGenrePage(),
    );
  }
}

class MusicGenrePage extends StatelessWidget {
  const MusicGenrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music Genres'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Showing Pop music recommendations'),
                  ),
                );
              },
              icon: const Icon(Icons.music_note),
              label: const Text('Pop'),
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white, // Change onPrimary to foregroundColor
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Showing Rock music recommendations'),
                  ),
                );
              },
              icon: const Icon(Icons.music_note),
              label: const Text('Rock'),
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white, // Change onPrimary to foregroundColor
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Showing Hip Hop music recommendations'),
                  ),
                );
              },
              icon: const Icon(Icons.music_note),
              label: const Text('Hip Hop'),
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white, // Change onPrimary to foregroundColor
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                'assets/music_logo.png',
                width: 150,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          color: Colors.blue,
          child: const Center(
            child: Text('Bottom Navigation Bar'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('You tapped the Floating Action Button'),
            ),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
