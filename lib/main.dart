import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp( MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'Навсегда ничего не бывает.', author: 'Л.Н.Толстой "Война и мир"'),
    Quote(text: 'Она еще не сдалась, но уже не боролась.', author: 'Эрих Мария Ремарк "Ночь в Лиссабоне"'),
    Quote(text: 'Что хочешь помнить, то всегда помнишь.', author: 'Рэй Брэдбери "Вино из одуванчиков"'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                print('remove quote');
                quotes.remove(quote);
              });
            }
        )).toList(),
      )
    );
  }
}