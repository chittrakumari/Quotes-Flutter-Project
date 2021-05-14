

  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

  void main() => runApp(MaterialApp(


    debugShowCheckedModeBanner: false,
      home: QuoteList()
  ));

  class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
  }

  class _QuoteListState extends State<QuoteList> {
    List<Quote> quotes=[
      Quote(text:'Be yourself; everyone else is already taken',author:'Oscar Wilde' ),
      Quote(text:'I have nothing to declare except my genius',author:'Oscar Wilde'),
      Quote(text:'The truth is rarely pure and never simple',author: 'Oscar Wilde'),
    ];
    Widget quoteTemplate (quote){
      return Card(
margin: EdgeInsets.fromLTRB(40.0, 40.0, 40.0,0),
               color: Colors.grey[200],
        child:Padding(
          padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(quote.text,
           style: TextStyle(
            letterSpacing: 1.0,
             fontSize: 20.0,
             fontWeight: FontWeight.w700,

           ),
            ),
          SizedBox(height: 6.0),

            Text(' - ${quote.author}',
              style: TextStyle(
                letterSpacing: 1.0,
                fontSize: 20.0,
                fontWeight: FontWeight.w700,

              ),
            ),
          ],
        ),
      )
      );
    }
    Widget build(BuildContext context) {

      return Scaffold(

        appBar: AppBar(
          title: Text('QUOTES',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 24.0,
            letterSpacing: 2.0,
            color: Colors.black,
          ),
          ),
          backgroundColor: Colors.pinkAccent[400],
          centerTitle: true,
          elevation: 0.0,
        ),


        body: Column(

          children:

          /*We are using a map function traverse each quotes in the list Quotes and then
          returning it using text widget but as childern widget accepts a list we are converting it
           using toList() function.
          */



        quotes.map((quote){
      return quoteTemplate(quote);
        }
      ).toList(),

        ),
      );
    }

  }


