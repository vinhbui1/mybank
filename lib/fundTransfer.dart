import 'package:flutter/material.dart';
import 'package:mybank/SigninSum.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './enterPin.dart';
import './main.dart';
import 'package:carousel_slider/carousel_slider.dart';
import './dashboard1.dart';

class Funtransfer extends StatefulWidget {
  @override
  _FuntransferState createState() => _FuntransferState();
}

class _FuntransferState extends State<Funtransfer> {
  Widget get iconTopbar {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: new EdgeInsets.only(top: statusBarHeight, right: 15),
      width: double.infinity,
      child: (Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
               onPressed: (){
                Navigator.pop(context);
               },
              icon: Image.asset('images/iconback.png',
                  height: MediaQuery.of(context).size.height / 25)),
          Image.asset(
            'images/button1.png',
            height: MediaQuery.of(context).size.height / 25,
          )
        ],
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return new MaterialApp(
      
        home: Scaffold(
            resizeToAvoidBottomPadding: false,
            backgroundColor: Color.fromRGBO(236, 236, 237, 1),
            body: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      iconTopbar,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Fun Transfer",
                            style: TextStyle(fontSize: 28, color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height -
                      MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromRGBO(236, 236, 237, 1),
                  child: Container(
                    padding: const EdgeInsets.only(right: 30, left: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          //  width: size.width / 4,
                          height: size.height / 17,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter Account number",
                              filled: true,
                              fillColor: Color.fromRGBO(236, 236, 237, 1),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(75.0))),
                            ),
                          ),
                        ),
                        Container(
                          //width: size.width / 4,
                          height: size.height / 17,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter Amount",
                              filled: true,
                              fillColor: Color.fromRGBO(236, 236, 237, 1),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(75.0))),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: size.width / 4,
                              height: size.height / 17,
                              child: RaisedButton(
                                color: Color.fromRGBO(242, 72, 99, 1),
                                onPressed: () {},
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                                child: Text("\$500"),
                              ),
                            ),
                            Container(
                              width: size.width / 4,
                              height: size.height / 17,
                              child: RaisedButton(
                                color: Color.fromRGBO(242, 72, 99, 1),
                                onPressed: () {},
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                                child: Text("\$1000"),
                              ),
                            ),
                            Container(
                              width: size.width / 4,
                              height: size.height / 17,
                              child: RaisedButton(
                                color: Color.fromRGBO(242, 72, 99, 1),
                                onPressed: () {},
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                                child: Text("\$2000"),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          // width: size.width / 4,
                          height: size.height / 17,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Add your message ",
                              filled: true,
                              fillColor: Color.fromRGBO(236, 236, 237, 1),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(75.0))),
                            ),
                          ),
                        ),
                        Text(
                          "Choose Card",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        CarouselSlider(
                          aspectRatio: 16 / 9,
                          viewportFraction: 0.8,
                          enableInfiniteScroll: true,
                          enlargeCenterPage: true,
                          height: MediaQuery.of(context).size.height / 5,
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
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    child: GestureDetector(
                                        child: Image.asset(i, fit: BoxFit.fill),
                                        onTap: () {}));
                              },
                            );
                          }).toList(),
                        ),
                        Center(
                          child: Container(
                            width: size.width / 3,
                            height: size.height / 13,
                            child: RaisedButton(
                              color: Color.fromRGBO(67, 196, 98, 1),
                              onPressed: () {},
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                              child: Text(
                                "Send money",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
