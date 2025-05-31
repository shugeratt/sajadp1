import 'package:flutter/material.dart';
//import '../widgets/bottom_nav_bar.dart';
import '../bottom_nav_bar.dart';
import 'appbar_screen.dart';
class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int _selectedIndex = 3;
  bool _automaticPayment = true;

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
      appBar: buildCommonAppBar(title: 'LOREM BANK'),
      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'SETTINGS',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('AUTOMATIC PAYMENT'),
                  Switch(
                    value: _automaticPayment,
                    onChanged: (value) {
                      setState(() {
                        _automaticPayment = value;
                      });
                    },
                    activeColor: Colors.green,
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