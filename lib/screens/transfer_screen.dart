import 'package:flutter/material.dart';
//import '../widgets/bottom_nav_bar.dart';
import '../bottom_nav_bar.dart';
import 'appbar_screen.dart';
class TransferScreen extends StatefulWidget {
  @override
  _TransferScreenState createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 1) {
      Navigator.pushNamed(context, '/cards');
    } else if (index == 0) {
      Navigator.pushNamed(context, '/balance');
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
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'TRANSFER',
                style: TextStyle(fontFamily: 'Montserrat',fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('US DOLLAR',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "500.00",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('to', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Euro 450.00",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('DESTINATION',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "From Saved Contact",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
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
}