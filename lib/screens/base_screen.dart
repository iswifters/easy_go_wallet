import 'package:flutter/material.dart';

import 'package:easy_go_wallet/constants/color_constants.dart';
import 'package:easy_go_wallet/screens/home_screen.dart';
import 'package:easy_go_wallet/screens/history.dart';
import 'package:easy_go_wallet/screens/profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_screen.dart';

class BaseScreen extends StatefulWidget {
    const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    HistoryScreen(),
    HomeScreen(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.creditCard), label: "History"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.solidEnvelope), label: "Transfer"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.chartBar), label: "Profile")
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
