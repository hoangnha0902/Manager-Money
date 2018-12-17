import 'package:flutter/material.dart';
import 'package:manager_money_wedding/main.dart';
import 'package:manager_money_wedding/screen/history/history_view.dart';
import 'package:manager_money_wedding/screen/home/home_view.dart';
import 'package:manager_money_wedding/screen/profile/profile_view.dart';
import 'package:manager_money_wedding/strings.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIntent = 0;
  String _titleAppbar = homeTitle;

  final List<Widget> _children = [
    HomeScreen(),
    HistoryScreen(),
    ProfileScreen(),
  ];
  final List<String> _titleAppbars = [homeTitle, historyTitle, meTitle];

  void onTabTapped(int index) {
    setState(() {
      _currentIntent = index;
      _titleAppbar = _titleAppbars[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$_titleAppbar'),
        actions: _currentIntent != 0
            ? null
            : <Widget>[
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.pushNamed(context, WEDDING_CREATE_ROUTE);
                  },
                )
              ],
      ),
      body: _children[_currentIntent],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time), title: Text('Lịch sử')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), title: Text('Me'))
        ],
        currentIndex: _currentIntent,
      ),
    );
  }
}
