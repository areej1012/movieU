import 'package:flutter/material.dart';

import '../Model/Movie.dart';

class UpcomingList extends StatelessWidget {
  const UpcomingList({Key? key, required this.index}) : super(key: key);
final int index ;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4.0),
        width: 240,
        child: Column(
          children: <Widget>[
            Stack(children: <Widget>[
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          upcomingMoive[index].imageUrl))),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.favorite_border,color: Colors.white,),
              )
            ]),
            SizedBox(
              height: 4,
            ),
            Text(upcomingMoive[index].title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center),
            Text(upcomingMoive[index].description,
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center)
          ],
        ));
  }
}
