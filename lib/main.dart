import 'package:flutter/material.dart';
import './dashboard.dart';
import './menu1.dart';
import './menu2.dart';
import './menu3.dart';
import './menu4.dart';
import './Signinsum.dart';
import 'package:dots_indicator/dots_indicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  final Color orange = Colors.orange;
  final Color white = Colors.white;
  Color naviColor = Colors.orange;
  Color butColor = Colors.white;

  int _currentIndex = 0;
  handleColor() {
    setState(() {
      if (_currentIndex == 0) {
        naviColor = orange;
        butColor = Colors.white;
      }
      if (_currentIndex == 1) {
        naviColor = white;
        butColor = Color.fromRGBO(0, 173, 152, 1);
      }
      if (_currentIndex == 2) {
        naviColor = white;
        butColor = Color.fromRGBO(242, 72, 99, 1);
      }
      if (_currentIndex == 3) {
        naviColor = white;
        butColor = Color.fromRGBO(42, 55, 71, 1);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 4);
    _controller.addListener(
      _handleTabSelection,
    );
  }

  _handleTabSelection() {
    setState(() {
      _currentIndex = _controller.index;
      handleColor();
    });
  }

  void _toggleTab() {
    if (_currentIndex >= 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignupSum()),
      );
    } else {
      _currentIndex = _controller.index + 1;
      _controller.animateTo(_currentIndex);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Builder(builder: (BuildContext context) {
          return Stack(
            children: <Widget>[
              Scaffold(
                body: TabBarView(
                  controller: _controller,
                  children: <Widget>[
                    Menu1(),
                    Menu2(),
                    Menu3(),
                    Menu4(),
                  ],
                ),
                floatingActionButton: FloatingActionButton(
                  backgroundColor: naviColor,
                  child: Icon(
                    Icons.arrow_forward,
                    color: butColor,
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Dashboard()),
                    // );
                    print('Current Index: $_currentIndex ');
                    _toggleTab();
                  },
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 30, left: 20),
                    child: DotsIndicator(
                      dotsCount: 4,
                      position: _currentIndex,
                      decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeColor: naviColor,
                        activeSize: const Size(18.0, 9.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                  )
                ],
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: <Widget>[
              //     Padding(
              //       padding: EdgeInsets.only(bottom: 30, left: 20),
              //       child: DotsIndicator(
              //         dotsCount: 4,
              //         position: _currentIndex,
              //         decorator: DotsDecorator(
              //           size: const Size.square(9.0),
              //           activeColor: naviColor,
              //           activeSize: const Size(18.0, 9.0),
              //           activeShape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(5.0)),
              //         ),
              //       ),
              //     )
              //   ],
              // )
            ],
          );
        }),
      ),
    );
  }
}
