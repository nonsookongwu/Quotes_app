import 'package:flutter/material.dart';
import 'quote.dart';


class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              quote.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.orange[300]
              ),),
            SizedBox(height: 6.0,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.orangeAccent,
              ),),
            SizedBox(height: 3.0,),
            TextButton.icon(onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('Delete Quote')),
          ],
        ),
      ),
    );
  }
}
