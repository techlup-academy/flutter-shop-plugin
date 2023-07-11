import 'package:flutter/material.dart';

class ProductItems extends StatelessWidget {
  const ProductItems({super.key});

  @override
  Widget build(BuildContext context) {
      return const Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Row(
              children: <Widget>[
                CircularProgressIndicator(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: null,
                  child: Text('BUY TICKETS'),
                ),
                SizedBox(width: 8),
                TextButton(
                  onPressed: null,
                  child: Text('LISTEN'),
                ),
                SizedBox(width: 8),
              ],
            ),
          ],
        ),
      );
  }
}