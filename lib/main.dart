import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() =>  runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List <Quote> amharic_quotes = [
    Quote(text: "የቆጡን አወርድ ብላ የብብቷን ጣለች", author: "kaleab"),
    Quote(text: "የነቶሎ ቶሎ ቤት ግድግዳው ሰንበሌጥ", author: "kaleab"),
    Quote(text: "የበሰበሰ ዝናብ አይፈራም", author: "kaleab"),
    Quote(text: "የአብስራ አልጋ ላይ ተኛች፣ እና ምን ይጠበስ", author: "kaleab"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Ethiopian Quotes"),
        centerTitle: true,
        backgroundColor: Colors.brown,
        elevation: 0.0,
      ),
      body: Column(
        children: amharic_quotes.map((quote) => QuoteCard(
          quote: quote,
        delete: (){
          setState(() {
            amharic_quotes.remove(quote);
          });
        },
        )).toList(),
      ),
    );

  }
}




