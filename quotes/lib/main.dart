import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'quote.dart';
void main() => runApp(MaterialApp(
  home:QuoteList()
));


class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  int srNO = 0;

  List<Quote> quotes = [
  Quote(quote: 'Love For All, Hatred For None.', author: 'Khalifatul Masih III'),
  Quote(quote: 'Change the world by being yourself.', author: 'Amy Poehler'),
  Quote(quote: 'Every moment is a fresh beginning.', author: 'T.S Eliot'),
    Quote(quote: 'Never regret anything that made you smile.' ,author: 'Mark Twain'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(

          children: quotes.map((quote) => QuoteCard(
              quote: quote,
            delete: (){
                setState(() {
                  quotes.remove(quote);
                });
          }
          )).toList(),
      ),
    )
      );
  }
}

class QuoteCard extends StatelessWidget {

final Quote quote;
final Function delete;
QuoteCard({this.quote, this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(

      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0,),
            Text('${quote.quote}',
                  style: TextStyle(
                                    color: Colors.grey[800]
                                  ),
                  ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children : <Widget>[ Text( '-${quote.author}')]
            ),
            SizedBox(height: 10.0,),
          TextButton.icon(
                          onPressed: delete,
                          label:Text('Delete'),
                          icon: Icon(Icons.delete),
                          ),
          ],
        ),
      ),
    );
  }
}
