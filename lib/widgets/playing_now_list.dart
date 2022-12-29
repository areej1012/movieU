import 'package:flutter/material.dart';

import '../Model/Movie.dart';

class PlayingNowList extends StatelessWidget {
  const PlayingNowList({Key? key, required this.i}) : super(key: key);
  final int i ;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4.0),
        width: 240,
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                         moviePlayNow[i].imageUrl))),
            ),
            SizedBox(height: 4,),
            Text( moviePlayNow[i].title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center),
            for(var item in moviePlayNow[i].genres ) Text(item+ ",",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center)
          ],
        ));
  }
}
