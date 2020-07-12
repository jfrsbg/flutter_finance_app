import 'package:finance_app/dashboard/DashboardPage.dart';
import 'package:finance_app/notification/NotificationPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  int _selectedIndex = 0;

  List<String> _titlePage = ['Dashboard', 'Notifications'];

  static List<Widget> _widgetOptions = <Widget>[
    DashboardPage(),
    NotificationPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: Center(child: Text(_titlePage.elementAt(_selectedIndex), style: TextStyle(color: Colors.grey),)),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              color: Theme.of(context).backgroundColor,
            ),
            Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.dollarSign),
              title: Text(_titlePage[0], style: TextStyle(fontSize: 20),),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bell),
              title: Text(_titlePage[1], style: TextStyle(fontSize: 20)),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
          iconSize: 30,
        ),
      );
  }

}
