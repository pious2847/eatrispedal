import 'package:flutter/material.dart';
import 'package:eatrispedal/theme/colors.dart';


class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBottomBar(
                  text: "Home",
                  icon: Icons.home,
                  selected: _selectedIndex == 0,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  }),
              IconBottomBar(
                  text: "Restaurants",
                  icon: Icons.restaurant,
                  selected: _selectedIndex == 1,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  }),
              IconBottomBar(
                  text: "Map",
                  icon: Icons.map,
                  selected: _selectedIndex == 2,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  }),
              IconBottomBar(
                  text: "Profile",
                  icon: Icons.person,
                  selected: _selectedIndex == 3,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  IconBottomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: selected ?  primcolorlight : Colors.grey,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 14,
              height: .1,
              color: selected ? primcolorlight : Colors.grey),
        )
      ],
    );
  }
}
