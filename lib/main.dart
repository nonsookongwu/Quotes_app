import 'package:flutter/material.dart';
import 'quote.dart';
import 'Quote_Card.dart ';

void main() {
  runApp(MaterialApp(
    home: QuoteList() ,
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
  Quote(text: 'Do not be afraid. Do not be satisfied with mediocrity. Put out into the deep and let down your nets for a catch.', author:'bible'),
  Quote(text: 'For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish, but have eternal life.', author: 'john 3:16'),
  Quote (text: 'I am the light of the world. Whoever follows me will never walk in darkness, but will have the light of life', author: 'the bible'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        title: Text('Quotes App'),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote:quote,
          delete: () {
              setState(() {
                quotes.remove(quote);
              });
          }
        )).toList(),
      ),
    );
  }
}


