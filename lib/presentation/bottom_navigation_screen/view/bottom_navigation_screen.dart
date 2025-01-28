import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ourcochin/core/constants/colors.dart';
import 'package:ourcochin/presentation/search_screen/view/search_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        backgroundColor:
            ColorTheme.mainColor, // Change the bottom bar background color here
        items: <Widget>[
          Icon(Icons.search, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.person_2_outlined, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
          // Change the page using the PageController
          _pageController.animateToPage(
            _page,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        },
      ),
      body: PageView(
        controller: _pageController,
        physics:
            const NeverScrollableScrollPhysics(), // Disable swipe to change page
        onPageChanged: (index) {
          setState(() {
            _page = index;
          });
        },
        children: <Widget>[
          SearchScreen(),
          // Add Screen
          Container(
            color: Colors.greenAccent,
            child: Center(
              child: Text('Add Screen', style: TextStyle(fontSize: 24)),
            ),
          ),
          // Profile Screen
          Container(
            color: Colors.orangeAccent,
            child: Center(
              child: Text('Profile Screen', style: TextStyle(fontSize: 24)),
            ),
          ),
        ],
      ),
    );
  }
}
