import 'package:flutter/material.dart';
import 'package:eatrispedal/theme/colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: secondarytextcolor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
          rippleColor: primcolorlight, // tab button ripple color when pressed
          hoverColor: primcolorlight, // tab button hover color
          haptic: true, // haptic feedback
          tabBorderRadius: 15, 
          backgroundColor: secondarytextcolor,
          tabActiveBorder: Border.all(color: primcolorlight, width: 1), // tab button border
          duration: const Duration(milliseconds: 900), // tab animation duration
          gap: 8, // the tab button gap between icon and text 
          color: cardgrey, // unselected icon color
          activeColor: primcolor, // selected icon and text color
          iconSize: 24, // tab button icon size
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
          tabs: const [
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          icon: Icons.search,
          text: 'Search',
        ),
        GButton(
          icon: Icons.shopping_cart_outlined,
          text: 'Cart',
        ),
        GButton(
          icon: Icons.supervised_user_circle_outlined,
          text: 'Profile',
        )
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
