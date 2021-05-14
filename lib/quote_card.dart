import 'package:flutter/material.dart';
import 'quote.dart';

class CardWidget extends StatelessWidget {


  final Quote quote;
  CardWidget({ required this.quote});

  @override
  Widget build(BuildContext context) {
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
}
