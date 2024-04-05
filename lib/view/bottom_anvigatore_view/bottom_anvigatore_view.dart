import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodappui/res/my_colors/my_colors.dart';
import 'package:foodappui/view/home_view/home_view.dart';

class BottomNavigatorView extends StatefulWidget {
  const BottomNavigatorView({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorView> createState() => _BottomNavigatorViewState();
}

class _BottomNavigatorViewState extends State<BottomNavigatorView> {
  List allViews = [
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black.withOpacity(0.1),
      bottomNavigationBar: ClipRRect( // Use ClipRRect to clip the bottom navigation bar's corners
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)), // Set border radius for top corners
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black54,
          backgroundColor: Colors.grey.shade300.withOpacity(0.7),
          selectedItemColor: MyColors.lightBlue,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/bottom_navigator_images/home.png'),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/bottom_navigator_images/book.png'),
              ),
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/bottom_navigator_images/cart.png'),
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/bottom_navigator_images/profile.png'),
              ),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
      body: allViews[_selectedIndex],
    );
  }
}
