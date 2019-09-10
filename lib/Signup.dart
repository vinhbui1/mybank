import 'package:flutter/material.dart';
import 'package:mybank/Forgotpin.dart';
import 'package:mybank/SigninSum.dart';
import './enterPin.dart';
import './main.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
          resizeToAvoidBottomInset: false,
            backgroundColor: Color.fromRGBO(0, 173, 152, 1),
            body: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 40),
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: GestureDetector(
                          onTap: () {
                           Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            child: GestureDetector(
                              onTap: () {
                               Navigator.pop(context);
                              },
                              child: Text(
                                "Sign in",
                                style:
                                    TextStyle(fontSize: 24, color: Colors.grey),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 65),
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize: 28, color: Colors.white),
                              ),
                            ),
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
                  color: Colors.transparent,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(40.0),
                              topRight: const Radius.circular(40.0))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            //margin: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  "Enter the following details To Sign up",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: TextField(
                                    decoration: new InputDecoration(
                                        border: new OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                            const Radius.circular(70.0),
                                          ),
                                        ),
                                        filled: true,
                                        hintStyle: new TextStyle(
                                            color: Colors.grey[800]),
                                        hintText: "Full Name",
                                        fillColor:
                                            Color.fromRGBO(236, 236, 237, 1)),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  236, 236, 237, 1),
                                              width: 0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                              const Radius.circular(70.0),
                                            )),
                                        filled: true,
                                        hintStyle: new TextStyle(
                                          color: Colors.grey[800],
                                        ),
                                        hintText: "Enter Your Email",
                                        fillColor:
                                            Color.fromRGBO(236, 236, 237, 1)),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  236, 236, 237, 1),
                                              width: 0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                              const Radius.circular(70.0),
                                            )),
                                        filled: true,
                                        hintStyle: new TextStyle(
                                          color: Colors.grey[800],
                                        ),
                                        hintText: "Enter Your 6 digit PIN",
                                        fillColor:
                                            Color.fromRGBO(236, 236, 237, 1)),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  236, 236, 237, 1),
                                              width: 0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                              const Radius.circular(70.0),
                                            )),
                                        filled: true,
                                        hintStyle: new TextStyle(
                                          color: Colors.grey[800],
                                        ),
                                        hintText: "Mobile",
                                        fillColor:
                                            Color.fromRGBO(236, 236, 237, 1)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 6,
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(right: 20, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  child: FloatingActionButton(
                                    backgroundColor:
                                        Color.fromRGBO(0, 173, 152, 1),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Forgotpin()));
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => EnterPin()),
                                      // );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            )));
  }
}
