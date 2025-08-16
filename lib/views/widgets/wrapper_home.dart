import 'package:flutter/material.dart';
import 'package:movie_app/helper/theme/app_color.dart';
import 'package:movie_app/views/screens/home_screen.dart';
import 'package:movie_app/views/screens/watch_list_screen.dart';

class WrapperHome extends StatefulWidget {
  const WrapperHome({super.key});

  @override
  State<WrapperHome> createState() => _WrapperHomeState();
}

class _WrapperHomeState extends State<WrapperHome> {
  int _currentIndex = 0;

  final List<Widget> _bodyScreens = [HomeScreen(), WatchListScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyScreens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border_outlined),
            label: 'Watch List',
          ),
        ],
        backgroundColor: AppColors.bottomNavBarColor,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.unSelectedIconColor,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
