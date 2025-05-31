import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      decoration: BoxDecoration(
        color: Color.fromRGBO(45, 45, 131,0.96),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.person, 0),
          _buildNavItem(Icons.account_balance_wallet, 1),
          _buildNavItem(Icons.message, 2),
          _buildNavItem(Icons.settings, 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Icon(
        icon,
        color: selectedIndex == index ? Colors.white : Colors.white60,
        size: 30,
      ),
    );
  }
}