import 'package:expense_manager/screens/trip_home_screen.dart';
import 'package:expense_manager/screens/trips_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ExpenseManager());
}

class ExpenseManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFE91E63),
        accentColor: Color(0xFF009688),
        fontFamily: 'PTSans',
      ),
      home: TripsScreen(),
      routes: {
        TripHomeScreen.routeName: (ctx) => TripHomeScreen(),
      },
    );
  }
}
