import 'package:flutter/material.dart';
import 'package:mybank/SigninSum.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mybank/dashboard.dart';
import './enterPin.dart';
import './main.dart';

class Forgotpin extends StatefulWidget {
  @override
  _ForgotpinState createState() => _ForgotpinState();
}

class _ForgotpinState extends State<Forgotpin> {
  bool isSelectsms = false;
  bool isSelectemail = false;
  void setSelectedsms() {
    setState(() {
      isSelectsms = true;
      isSelectemail = false;
    });
  }

  void setSelectedemail() {
    setState(() {
      isSelectemail = true;
      isSelectsms = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromRGBO(42, 55, 71, 1),
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
                        padding: const EdgeInsets.only(bottom: 20, top: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupSum()),
                            );
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Forgot Your",
                                style: TextStyle(
                                    fontSize: 28, color: Colors.white),
                              ),
                            ),
                          ),
                          Text(
                            "PIN ?",
                            style: TextStyle(fontSize: 28, color: Colors.white),
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
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(40.0),
                              topRight: const Radius.circular(40.0))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 24,
                              ),
                              Text(
                                "Select which contact  details should we ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Use to reset your pin ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 24,
                              ),
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  width: double.infinity,
                                  color: Color.fromRGBO(236, 236, 237, 1),
                                  child: FlatButton(
                                    onPressed: () {
                                      setSelectedsms();
                                    },
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        //  SizedBox(height: 10,),
                                        Row(
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text('Via SMS'),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(Icons.message),
                                                    Text(
                                                      "   * *    * * *   * * *   1946",
                                                      style: TextStyle(
                                                          fontSize: 22),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            isSelectsms
                                                ? Image(
                                                    image: new AssetImage(
                                                        "images/appbank.png"),
                                                    width: 25,
                                                    height: 25,
                                                    alignment: Alignment.center,
                                                  )
                                                : Container()
                                          ],
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 24,
                              ),
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  width: double.infinity,
                                  color: Color.fromRGBO(236, 236, 237, 1),
                                  child: FlatButton(
                                    onPressed: () {
                                      setSelectedemail();
                                    },
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        //  SizedBox(height: 10,),
                                        Row(
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text('Via Email'),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(Icons.mail),
                                                    Text(
                                                      "   * * * * *   19@gmail.com",
                                                      style: TextStyle(
                                                          fontSize: 22),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            isSelectemail
                                                ? Image(
                                                    image: new AssetImage(
                                                        "images/appbank.png"),
                                                    width: 25,
                                                    height: 25,
                                                    alignment: Alignment.center,
                                                  )
                                                : Container()
                                          ],
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  FloatingActionButton(
                                    backgroundColor:
                                        Color.fromRGBO(42, 55, 71, 1),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Dashboard()),
                                      );
                                      isSelectemail
                                          ? Fluttertoast.showToast(
                                              msg: "This is Toast Email",
                                              toastLength: Toast.LENGTH_SHORT,
                                              gravity: ToastGravity.CENTER,
                                              timeInSecForIos: 1)
                                          : isSelectsms
                                              ? Fluttertoast.showToast(
                                                  msg: "This is Toast Sms",
                                                  toastLength:
                                                      Toast.LENGTH_SHORT,
                                                  gravity: ToastGravity.CENTER,
                                                  timeInSecForIos: 1)
                                              : Fluttertoast.showToast(
                                                  msg: "You dont Select",
                                                  toastLength:
                                                      Toast.LENGTH_SHORT,
                                                  gravity: ToastGravity.CENTER,
                                                  timeInSecForIos: 1);
                                    },
                                  )
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 24,
                              ),
                            ],
                          ),
                        ],
                      )),
                )
              ],
            )));
  }
}
