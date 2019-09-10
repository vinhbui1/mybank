import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Menu3 extends StatefulWidget {
  @override
  _Menu3State createState() => _Menu3State();
}

class _Menu3State extends State<Menu3> {
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
                Image.asset("images/onBoardScreen3Logo.png"),
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
                          color: Color.fromRGBO(242, 72, 99, 1),
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
                            "Easy wallet",
                            style: TextStyle(fontSize: 30,color: Colors.white),
                          ),
                          Text(
                            "Control",
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
