import 'dart:ui';

import 'package:flutter/material.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("M"),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              height: 450,
        width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                  image: NetworkImage("https://dx35vtwkllhj9.cloudfront.net/paramountpictures/smile/images/regions/us/onesheet.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
