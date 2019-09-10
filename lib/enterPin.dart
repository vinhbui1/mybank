import 'package:flutter/material.dart';

class EnterPin extends StatefulWidget {
  @override
  _EnterPinState createState() => _EnterPinState();
}

Color grey = Colors.red;
Color grey1 = Colors.red;
Color grey2 = Colors.red;
Color grey3 = Colors.red;
Color grey4 = Colors.red;
Color grey5 = Colors.red;
List pin = [];
bool check = false;

class _EnterPinState extends State<EnterPin> {
  void colorCheck() {
    setState(() {
      if (pin.length == 0) {
        grey = Colors.red;
        grey1 = Colors.red;
        grey2 = Colors.red;
        grey3 = Colors.red;
        grey4 = Colors.red;
        grey5 = Colors.red;
      }
      if (pin.length == 1) {
        grey = Colors.black;
        grey1 = Colors.red;
        grey2 = Colors.red;
        grey3 = Colors.red;
        grey4 = Colors.red;
        grey5 = Colors.red;
      }
      if (pin.length == 2) {
        grey1 = Colors.black;
        grey2 = Colors.red;
        grey3 = Colors.red;
        grey4 = Colors.red;
        grey5 = Colors.red;
      }
      if (pin.length == 3) {
        grey2 = Colors.black;
        grey3 = Colors.red;
        grey4 = Colors.red;
        grey5 = Colors.red;
      }
      if (pin.length == 4) {
        grey3 = Colors.black;
        grey4 = Colors.red;
        grey5 = Colors.red;
      }
      if (pin.length == 5) {
        grey4 = Colors.black;
        grey5 = Colors.red;
      }
      if (pin.length == 6) {
        grey5 = Colors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget Circle(Color isLastCard, bool color) {
      return Container(
        margin: const EdgeInsets.only(right: 8),
        width: 50.0,
        height: 50.0,
        decoration: new BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
        ),
        child: Center(
            child: Container(
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
            color: isLastCard,
            shape: BoxShape.circle,
          ),
        )),
      );
    }

    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 30, bottom: 30),
          margin: const EdgeInsets.only(top: 20),
          child: Text(
            "Enter Your 6 digit  PIN To Sign in",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Circle(grey, check),
            Circle(grey1, check),
            Circle(grey2, check),
            Circle(grey3, check),
            Circle(grey4, check),
            Circle(grey5, check)
          ],
        ),
        Container(
          padding: const EdgeInsets.only(left: 80, top: 56),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Expanded(
                  child: GestureDetector(
                    child: Text('1',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 35)),
                    onTap: () {
                      if (pin.length < 6) {
                        pin.add('1');
                      }
                      print("object");
                      colorCheck();
                    },
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Text('2',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 35)),
                  onTap: () {
                    if (pin.length < 6) {
                      pin.add('2');
                    }
                    colorCheck();
                  },
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Text('3',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 35)),
                  onTap: () {
                    if (pin.length < 6) {
                      pin.add('3');
                    }
                    colorCheck();
                  },
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 80, top: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Expanded(
                  child: GestureDetector(
                    child: Text('4',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 35)),
                    onTap: () {
                      if (pin.length < 6) {
                        pin.add('4');
                      }
                      colorCheck();
                    },
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Text('5',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 35)),
                  onTap: () {
                    if (pin.length < 6) {
                      pin.add('5');
                    }
                    colorCheck();
                  },
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Text('6',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 35)),
                  onTap: () {
                    if (pin.length < 6) {
                      pin.add('6');
                    }
                    colorCheck();
                  },
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 80, top: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Expanded(
                  child: GestureDetector(
                    child: Text('7',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 35)),
                    onTap: () {
                      if (pin.length < 6) {
                        pin.add('7');
                      }
                      colorCheck();
                    },
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Text('8',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 35)),
                  onTap: () {
                    if (pin.length < 6) {
                      pin.add('8');
                    }
                    colorCheck();
                  },
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Text('9',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 35)),
                  onTap: () {
                    if (pin.length < 6) {
                      pin.add('9');
                    }
                    colorCheck();
                  },
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 80, top: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Expanded(
                  child: GestureDetector(
                    child: Text('.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 35)),
                    onTap: () {
                      if (pin.length < 6) {
                        pin.add('.');
                      }
                      colorCheck();
                    },
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Text('0',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 35)),
                  onTap: () {
                    if (pin.length < 6) {
                      pin.add('0');
                    }
                    colorCheck();
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 90),
                child: GestureDetector(
                  child: Icon(Icons.backspace),
                  onTap: () {
                    pin.removeLast();
                    print(pin);
                    colorCheck();
                  },
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
