import 'package:flutter/material.dart';
import 'package:movie_app/views/screens/home_screen.dart';
import 'package:movie_app/views/screens/watch_list_screen.dart';

class WrapperHome extends StatefulWidget {
  const WrapperHome({super.key});

  @override
  State<WrapperHome> createState() => _WrapperHomeState();
}

class _WrapperHomeState extends State<WrapperHome> {
  final int _currentIndex = 0;

  final List<Widget> _bodyScreens = [HomeScreen(), WatchListScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyScreens[0],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_border_outlined)),
        ],
      ),
    );
  }
}
