import 'package:flutter/material.dart';

class Notifi extends StatefulWidget {
  @override
  _NotifiState createState() => _NotifiState();
}

class Trans {
  const Trans({this.title, this.details, this.icon, this.time});
  final String title;
  final IconData icon;
  final String details;
  final String time;
}

const List<Trans> choices = const <Trans>[
  const Trans(
      title: 'Account Information',
      details: "Your account have create",
      icon: Icons.check,
      time: '17 minutes a go'),
  const Trans(
      title: 'Account Information',
      details: "Your account have create",
      icon: Icons.check,
      time: '17 minutes a go'),
  const Trans(
      title: 'Account Information',
      details: "Your account have create",
      icon: Icons.check,
      time: '17 minutes a go'),
  const Trans(
      title: 'Account Information',
      details: "Your account have create",
      icon: Icons.check,
      time: '17 minutes a go'),
  const Trans(
      title: 'Account Information',
      details: "Your account have create",
      icon: Icons.check,
      time: '17 minutes a go'),
];

class _NotifiState extends State<Notifi> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 13;
    final double itemWidth = size.width / 2.3;
    return new Container(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 76),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Notification",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: GridView.count(
              childAspectRatio: (itemWidth / itemHeight),
              crossAxisCount: 1,
              children: List.generate(choices.length, (index) {
                return GestureDetector(
                  child: ChoiceCard(choice: choices[index]),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Trans choice;

  @override
  Widget build(BuildContext context) {
    //final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.only(right: 5, left: 5, top: 5),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
           // mainAxisAlignment: MainAxisAlignment.,
            children: <Widget>[
              Icon(
                choice.icon,
              ),
              Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  Text(
                    choice.title,
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  Text(
                    choice.details,
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Text(
                    choice.time,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
