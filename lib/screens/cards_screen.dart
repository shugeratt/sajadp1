import 'package:flutter/material.dart';
//import '../widgets/bottom_nav_bar.dart';
import '../bottom_nav_bar.dart';
import 'appbar_screen.dart';
class CardsScreen extends StatefulWidget {
  @override
  _CardsScreenState createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    //
    if (index == 3) {
      Navigator.pushNamed(context, '/settings');
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
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'YOUR CARDS',
                style: TextStyle(fontFamily: 'Montserrat',fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Text('Lorem ipsum dolor sit amet'),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CARD NUMBER',
                    style: TextStyle(color: Colors.white60),
                  ),
                  Text(
                    '**** **** **** 1234',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('VALID', style: TextStyle(color: Colors.white60)),
                          Text('01/25', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('CVV', style: TextStyle(color: Colors.white60)),
                          Text('345', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(width: 5),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.yellow,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                SizedBox(width: 10),
                CircleAvatar(radius: 5, backgroundColor: Colors.grey),
                SizedBox(width: 10),
                CircleAvatar(radius: 5, backgroundColor: Colors.grey),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'WITHDRAW',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '\$10.000 of \$45.000',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
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