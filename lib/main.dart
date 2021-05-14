

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';


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



        quotes.map((quote)=>CardWidget(
          quote: quote,
        delete:(){
            setState(() {
              quotes.remove(quote);
            });
        }
      )

      ).toList(),

        ),
      );
    }

  }








