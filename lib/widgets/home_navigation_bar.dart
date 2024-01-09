import 'package:flutter/material.dart';

class HomeNavigationBar extends StatefulWidget {
  const HomeNavigationBar({Key? key}) : super(key: key);

  @override
  HomeNavigationBarState createState() => HomeNavigationBarState();
}

class HomeNavigationBarState extends State<HomeNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 64,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 64,
            decoration: ShapeDecoration(
              color: const Color(0xFF192126),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
          NavItem(
            icon: Icons.home,
            text: 'Home',
            onTap: () {
              setState(() {
                _currentIndex = 0;
              });
            },
            isSelected: _currentIndex == 0,
            marginLeft: 20,
          ),
          NavItem(
            icon: Icons.rocket,
            text: 'Explore',
            onTap: () {
              setState(() {
                _currentIndex = 1;
              });
            },
            isSelected: _currentIndex == 1,
            marginLeft: 100,
          ),
          NavItem(
            icon: Icons.insert_chart,
            text: 'Progress',
            onTap: () {
              setState(() {
                _currentIndex = 2;
              });
            },
            isSelected: _currentIndex == 2,
            marginLeft: 180,
          ),
          NavItem(
            icon: Icons.person,
            text: 'Person',
            onTap: () {
              setState(() {
                _currentIndex = 3;
              });
            },
            isSelected: _currentIndex == 3,
            marginLeft: 260,
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  final bool isSelected;
  final double marginLeft;

  const NavItem({super.key,
    required this.icon,
    required this.text,
    required this.onTap,
    required this.isSelected,
    this.marginLeft = 10,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: marginLeft, top: 15),
        width: 107,
        height: 36,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFBBF246) : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.black : Colors.white,
            ),
            if (isSelected)
              Container(
                width: 80,
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w500,
                    height: 1.0,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
