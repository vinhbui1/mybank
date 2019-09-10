import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final heightofTabar = MediaQuery.of(context).padding.top;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(236, 236, 237, 1),
        body: Container(
          padding: EdgeInsets.only(
              top: heightofTabar + size.height / 16, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Account Info",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset(
                        'images/profile.png',
                        height: size.height / 9,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Alexa Smith',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Available balance',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              )),
                          Text('\$2,434.52'),
                        ],
                      ),
                      RaisedButton(
                        onPressed: () {},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        child: Text("Edit profile"),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: size.width / 2.6,
                      height: size.height / 14,
                      child: RaisedButton(
                        color: Colors.blue,
                        onPressed: () {},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        child: Text("Accounts"),
                      ),
                    ),
                    Container(
                      width: size.width / 2.6,
                      height: size.height / 14,
                      child: OutlineButton(
                        borderSide: BorderSide(color: Colors.black),
                        onPressed: () {},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        child: Text("Cards"),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                
                  child: ListView.builder(
                    itemCount: number.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Dismissible(
                        key: Key(number[index]),
                        onDismissed: (direction) {
                          setState(() {
                            number.removeAt(index);
                          });
                        },
                        background: Container(
                          color: Colors.red,
                          child: Icon(Icons.delete),
                        ),
                        child: Container(
                          height: size.height / 7.5,
                          child: Card(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'Acount Number',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Text(
                                      'Account Type',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Text(
                                      'IFSC Code',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      number[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      type[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      code[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
              
              )
            ],
          ),
        ),
      ),
    );
  }
}

final List<String> number = <String>[
  '1231 1231 2356 7373',
  '1231 1231 2356 7374',
  '1231 1231 2356 7375',
   '1231 1231 2356 7375',
    '1231 1231 2356 7375',
];
final List<String> code = <String>[
  'ABCD13123123',
  'ABCD13123123',
  'ABCD13123123',
   '1231 1231 2356 7375',
    '1231 1231 2356 7375',
];
final List<String> type = <String>[
  'Saving account',
  'Saving account',
  'Saving account',
   '1231 1231 2356 7375',
    '1231 1231 2356 7375',
];
