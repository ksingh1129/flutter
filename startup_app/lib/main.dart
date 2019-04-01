import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Startup Name Generator', home: RandomWords());
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  final _suggestion = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 18.0);

  Widget _buildRow(WordPair pair) {
    return ListTile(
        title: Text(
      pair.asPascalCase,
      style: _biggerFont,
    ));
  }

  Widget _buildSuggestion() {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) {
          print('[Index]: $i');
          return Divider();
        }

        final index = i ~/ 2;
        if (index >= _suggestion.length) {
          _suggestion.addAll(_generateWordPair().take(10));
        }

        return _buildRow(_suggestion[index]);
      },
    );
  }

  Iterable<WordPair> _generateWordPair() {
    
    final wordsPairItem = <WordPair>[];
    
    const limit = 100;

    for(var i = 0; i < limit; i++ ) {
      wordsPairItem.add(WordPair.random());
    }

    return wordsPairItem;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generater'),
      ),
      body: _buildSuggestion(),
    );
  }
}
