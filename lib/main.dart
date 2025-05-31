import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/cards_screen.dart';
import 'screens/balance_screen.dart';
import 'screens/transfer_screen.dart';
import 'screens/stock_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lorem Bank',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/cards': (context) => CardsScreen(),
        '/balance': (context) => BalanceScreen(),
        '/transfer': (context) => TransferScreen(),
        '/stock': (context) => StockScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}