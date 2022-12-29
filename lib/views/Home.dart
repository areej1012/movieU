import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../widgets/playing_now_list.dart';
import '../widgets/trending_list.dart';
import '../widgets/upcoming_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: const Text("Movie U", style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
          color: Colors.black,
          height: 4.0,
        ),

        ),),
        bottomNavigationBar:Container(
          color: Colors.black,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
              child: const GNav(
                backgroundColor: Colors.black,
                color: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: Colors.white10,
                gap: 8,
                tabs:  [
                  GButton(icon: Icons.home_max_rounded,
                  text: 'Home',),
                  GButton(icon: Icons.grid_view,
                  text: 'Category ',),
                  GButton(icon: Icons.favorite_border,
                  text: 'Favorite',)
                ],
              ),
            ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Now Playing",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                )),
            Container(
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  PlayingNowList(),
                  PlayingNowList(),
                  PlayingNowList()
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Trending",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                )),
            Container(
              height: 500,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  TrendingList(),
                  TrendingList(),
                  TrendingList()
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Upcoming",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                )),
            Container(
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  UpcomingList(),
                  UpcomingList(),
                  UpcomingList()
                ],
              ),
            ),
          ],
        )));
  }
}
