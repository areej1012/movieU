import 'package:flutter/material.dart';

class UpcomingList extends StatelessWidget {
  const UpcomingList({Key? key}) : super(key: key);

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
                            "https://resizing.flixster.com/QJkeIM6LIvwmRGiLKrNBcpZIk8M=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzAwYzExZjlmLWJlODQtNDY4Mi1iNDhkLWU2YWNmMGIyMDgwMi5qcGc="))),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.favorite_border,color: Colors.white,),
              )
            ]),
            SizedBox(
              height: 4,
            ),
            Text("Movie",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center),
            Text("13 /dec",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center)
          ],
        ));
  }
}
