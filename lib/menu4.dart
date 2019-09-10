import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Menu4 extends StatefulWidget {
  @override
  _Menu4State createState() => _Menu4State();
}

class _Menu4State extends State<Menu4> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        Scaffold(
          body: Container(
           color:  Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image.asset("images/onBoardScreen4Logo.png"),
                SizedBox(
                  height: 60,
                ),
                Container(
                    padding: EdgeInsets.only(top: 15),
                    height: MediaQuery.of(context).size.height -
                        MediaQuery.of(context).size.height / 1.7,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                    child: Container(
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      decoration: BoxDecoration(
                          color:Color.fromRGBO(42, 55, 71, 1),
                          borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(40.0),
                              topRight: const Radius.circular(40.0))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Fast and",
                            style: TextStyle(fontSize: 30,color: Colors.white),
                          ),
                          Text(
                            "Reliable",
                            style: TextStyle(fontSize: 30,color: Colors.white),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Loen ipum Lorem ipsum dolor sit amet ,",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Text(
                            "consectertuer adpingscing elit.",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}
