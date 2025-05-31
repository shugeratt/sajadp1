import 'package:flutter/material.dart';
//import '../widgets/bottom_nav_bar.dart';
import '../bottom_nav_bar.dart';
import 'appbar_screen.dart';

class BalanceScreen extends StatefulWidget {
  @override
  _BalanceScreenState createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 1) {
      Navigator.pushNamed(context, '/cards');
    } else if (index == 2) {
      Navigator.pushNamed(context, '/transfer');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: buildCommonAppBar(title: 'LOREM BANK'),
      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'YOUR BALANCE',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Text(
              '\$50.000',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('RECENT TRANSACTIONS',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Filter', style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                  SizedBox(height: 10),
                  _buildTransaction('Online Store', '01/02', '- \$100'),
                  _buildTransaction('Online Payment', '01/02', '- \$200'),
                  _buildTransaction('Salary', '01/02', '\$8.000'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  Widget _buildTransaction(String title, String date, String amount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(date, style: TextStyle(color: Colors.grey)),
            ],
          ),
          Text(amount,
              style: TextStyle(
                  color: amount.startsWith('-') ? Colors.red : Colors.green)),
        ],
      ),
    );
  }
}