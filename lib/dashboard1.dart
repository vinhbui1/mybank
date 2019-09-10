import 'dart:math';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import './fundTransfer.dart';

class Dashboard1 extends StatefulWidget {
  @override
  _Dashboard1State createState() => _Dashboard1State();
}

class _Dashboard1State extends State<Dashboard1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 9;
    final double itemWidth = size.width / 2.3;

    final double heightofTabbar = MediaQuery.of(context).padding.top;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
              top: heightofTabbar + 50, left: 30, right: 30, bottom: 15),
          child: new Column(
            children: <Widget>[
              Text(
                "Welcome",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "Alexa!",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        CarouselSlider(
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
          height: MediaQuery.of(context).size.height / 4,
          items: [
            "images/card.png",
            "images/card1.png",
            "images/card2.png",
            "images/card3.png",
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: GestureDetector(
                        child: Image.asset(i, fit: BoxFit.fill), onTap: () {}));
              },
            );
          }).toList(),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GridView.count(
                childAspectRatio: (itemWidth / itemHeight),
                crossAxisCount: 2,
                children: List.generate(choices.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      if (index == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Funtransfer()),
                        );
                      }
                    },
                    child: ChoiceCard(choice: choices[index]),
                  );
                })),
          ),
        ),
      ],
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});
  final String title;
  final String icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Account Information', icon: "images/icon1.png"),
  const Choice(title: 'Fund Transfer', icon: "images/icon2.png"),
  const Choice(title: 'Statment', icon: "images/icon3.png"),
  const Choice(title: 'Withdraw', icon: "images/icon4.png"),
  const Choice(title: 'Mobile Repaid', icon: "images/icon5.png"),
  const Choice(title: 'Bill Payment', icon: "images/icon6.png"),
  const Choice(title: 'Credit Card Sevrvices', icon: "images/icon7.png"),
  const Choice(title: 'Beneficiary', icon: "images/icon8.png"),
    
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    //final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.only(right: 5, left: 5, top: 5),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Text(
                  choice.title,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    choice.icon,
                    height: MediaQuery.of(context).size.height / 23,
                    width: MediaQuery.of(context).size.height / 23,
                  ),
                  // Icon(
                  //   choice.icon,
                  // ),
                ],
              )
            ]),
      ),
    );
  }
}
