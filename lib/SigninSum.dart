import 'package:flutter/material.dart';
import './Forgotpin.dart';
import './Signup.dart';
import './enterPin.dart';
import './main.dart';

class SignupSum extends StatefulWidget {
  @override
  _SignupSumState createState() => _SignupSumState();
}

class _SignupSumState extends State<SignupSum> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.pink,
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
                              onTap: () {},
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    fontSize: 28, color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 65),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Signup()),
                                );
                              },
                              child: Text(
                                "Sign up",
                                style:
                                    TextStyle(fontSize: 24, color: Colors.grey),
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
                        children: <Widget>[
                          EnterPin(),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 40, right: 18, top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Forgotpin()),
                                    );
                                  },
                                  child: Text(
                                    'Forgot your PIN',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 20),
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.pink,
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Signup()),
                                    );
                                  },
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                )
              ],
            )));
  }
}
