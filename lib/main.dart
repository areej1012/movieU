import 'package:flutter/material.dart';
import 'package:movie_api/views/Home.dart';

import 'views/moviedetail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.red
    ),
      home: const MovieDetailScreen(),
    );
  }
}


