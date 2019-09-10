import 'package:flutter/material.dart';
import './dashboard1.dart';
import './transaction.dart';
import './profile.dart';
import './notification.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

final GlobalKey<InnerDrawerState> _innerDrawerKey =
    GlobalKey<InnerDrawerState>();
bool checkedMenu = true;

class _DashboardState extends State<Dashboard> {
  int _cIndedx = 0;
  void _inCrementTab(index) {
    setState(() {
      _cIndedx = index;
    });
  }

  List<Widget> tabs = [Dashboard1(), Transaction(), Notifi(), Profile()];
  @override
  @override
  Widget build(BuildContext context) {
    return InnerDrawer(
      
      key: _innerDrawerKey,
      onTapClose: true, // default false
      swipe: true, // default true
      
      leftOffset: 0.6, // default 0.4
      rightOffset: 0.6, // default 0.4
      leftAnimationType: InnerDrawerAnimation.static, // default static
      rightAnimationType: InnerDrawerAnimation.quadratic, // def
      ///item trong menu
      leftChild: MaterialApp(
        home: Scaffold(
          body: Stack(
            children: <Widget>[iconTopbar, myListview(context)],
          ),
        ),
      ),
      scaffold: Scaffold(
        body: Stack(
          children: <Widget>[
            bodyContent,
            tabs[_cIndedx],
            iconTopbar,
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: bottomNavigationBar,
            ),
          ],
        ),
      ),
    );
  }

  Widget get bodyContent {
    return Container(color: Color.fromRGBO(236, 236, 237, 1));
  }

  List items = [
    'Services',
    'Benefits',
    'Scan To Pay',
    'Reward',
    'AppSettings',
    'FAQs',
    'Support',
    'Feedback'
  ];
  List itemsIcon = [
    Icons.settings,
    Icons.blur_on,
    Icons.scanner,
    Icons.card_giftcard,
    Icons.settings_applications,
    Icons.content_paste,
    Icons.supervised_user_circle,
    Icons.feedback
  ];
  void _toggle() {
    print(_cIndedx);
    _innerDrawerKey.currentState.toggle(
        // direction is optional
        // if not set, the last direction will be used
        direction: InnerDrawerDirection.start);
    setState(() {
      checkedMenu = true;
    });
  }
  Widget myListview(BuildContext context) {
    final double heightofTabbar = MediaQuery.of(context).size.height/8;

    return ListView.separated(
      
      padding:  EdgeInsets.only(left: 12, top: heightofTabbar),
      separatorBuilder: (context, index) => Divider(
        color: Colors.black,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('${items[index]}'),
          leading: Icon(itemsIcon[index]),
          trailing: Icon(Icons.arrow_forward_ios),
        );
      },
    );
  }

  Widget get iconTopbar {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: new EdgeInsets.only(top: statusBarHeight, left: 25, right: 15),
      width: double.infinity,
      child: (Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: _toggle,
            icon: Image.asset('images/menuicon.png',height: MediaQuery.of(context).size.height/25)),
          
          Image.asset('images/button1.png',height: MediaQuery.of(context).size.height/25,)
        ],
      )),
    );
  }

  Widget get bottomNavigationBar {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(40),
        topLeft: Radius.circular(40),
      ),
      child: BottomNavigationBar(
        currentIndex: _cIndedx,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), title: Text('Dashboard')),
          BottomNavigationBarItem(
              icon: Icon(Icons.domain), title: Text('Transactions')),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), title: Text('Notifications')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
        ],
        onTap: (index) {
          _inCrementTab(index);
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
      ),
    );
  }
}
