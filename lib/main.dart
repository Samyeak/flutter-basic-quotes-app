import 'package:flutter/material.dart';
import 'quote.dart';
import 'quotecard.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList()
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text:"There is nothing to fear but fear itself",author: "Oscar Wilde"),
    Quote(text:"He who blames others has a long way to go",author: "Oscar Wilde"),
    Quote(text:"He who blames himself is halfway there",author: "Oscar Wilde")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote){
          return QuoteCard(quote: quote);
        }).toList(),
      ),
    );
  }
}
