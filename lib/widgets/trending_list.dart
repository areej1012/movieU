import 'package:flutter/material.dart';

class TrendingList extends StatelessWidget {
  const TrendingList({Key? key}) : super(key: key);

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
                            "https://resizing.flixster.com/QJkeIM6LIvwmRGiLKrNBcpZIk8M=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzAwYzExZjlmLWJlODQtNDY4Mi1iNDhkLWU2YWNmMGIyMDgwMi5qcGc="))),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Title",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    SizedBox(height: 8,),
                    Container(
                        width: MediaQuery.of(context).size.width/2 ,
                        child: Text("Dehkdfsjkdjflkcgjdfkgjfkdgjvfksdjgfksdjggjfkgjnfkgjnfkgnjdfklgndfkgndfkgndks",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
                            )
                    ),
                    IconButton(icon: Icon(Icons.favorite_border), onPressed: () {  },
                    alignment: Alignment.bottomRight,)
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 8,)
      ],
    );
  }
}
