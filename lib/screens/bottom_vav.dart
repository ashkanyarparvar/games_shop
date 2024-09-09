import 'package:flutter/material.dart';
import 'package:games_shop/const.dart';
import 'package:games_shop/screens/first_screen.dart';
import 'package:games_shop/screens/home_screen.dart';
import 'package:games_shop/screens/signin_screen.dart';
import 'package:games_shop/screens/signup_screen.dart';

class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({super.key});

  @override
  _BottomNavWidgetState createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const HomeScreen(),
    const FirstScreen(),
    const SignInScreen(),
    const SignUpScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: mainColor,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fmd_good),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
