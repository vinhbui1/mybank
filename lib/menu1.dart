import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Menu1 extends StatefulWidget {
  @override
  _Menu1State createState() => _Menu1State();
}

class _Menu1State extends State<Menu1> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/onBoardScreen1Background.png"),
                  fit: BoxFit.fill),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image.asset("images/onBoardScreen1Logo.png"),
                SizedBox(
                  height: 20,
                ),
                Image.asset("images/onBoardScreen1Text.png"),
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
                          color: Colors.white,
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
                            "Welcom to ",
                            style: TextStyle(fontSize: 30),
                          ),
                          Text(
                            "MyBank",
                            style: TextStyle(fontSize: 30),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Loen ipum Lorem ipsum dolor sit amet ,",
                            style: TextStyle(fontSize: 16,color: Colors.grey),
                          ),
                          Text(
                            "consectertuer adpingscing elit.",
                            style: TextStyle(fontSize: 16,color: Colors.grey),
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
