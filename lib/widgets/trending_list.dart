import 'package:flutter/material.dart';

import '../Model/Movie.dart';

class TrendingList extends StatelessWidget {
  const TrendingList({Key? key, required this.index}) : super(key: key);
 final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          color: Colors.white10,
          elevation: 5,
          child: Row(
            children: <Widget>[
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width/3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(5)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            trendingMovie[index].imageUrl))),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(trendingMovie[index].title,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    SizedBox(height: 8,),
                    Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text(trendingMovie[index].description,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
                            )
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
        SizedBox(height: 8,)
      ],
    );
  }
}
