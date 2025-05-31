import 'package:flutter/material.dart';
//import '../widgets/bottom_nav_bar.dart';
import '../bottom_nav_bar.dart';
class StockScreen extends StatefulWidget {
  @override
  _StockScreenState createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 1) {
      Navigator.pushNamed(context, '/cards');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.grid_view, color: Colors.black),
                  Text(
                    'LOREM BANK',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.notifications, color: Colors.black),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'STOCK',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'LOREM IPSUM (LPM)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              color: Colors.grey[300],
              child: Center(child: Text('Graph Placeholder')),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('HOUR'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('DAY'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('WEEKS'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'YOUR STOCKS',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
}