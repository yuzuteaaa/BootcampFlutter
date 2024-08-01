import 'package:flutter/material.dart';
import 'package:sanberappflutter/settings_page.dart';
import 'package:sanberappflutter/view/home_page.dart';

class Buttomnavbar extends StatefulWidget {
  const Buttomnavbar({super.key});

  @override
  State<Buttomnavbar> createState() => _ButtomnavbarState();
}

class _ButtomnavbarState extends State<Buttomnavbar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    SearchPage(),
    SettingsPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Search Page'),
    );
  }
}
