import 'package:expense_manager/screens/trip_home_screen.dart';
import 'package:expense_manager/widget/single_trip_card.dart';
import 'package:flutter/material.dart';

class TripsScreen extends StatelessWidget {
  static const routeName = 'trips-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Trips',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.only(bottom: 5),
          children: [
            // Trip Card
            InkWell(
              onTap: () =>
                  Navigator.of(context).pushNamed(TripHomeScreen.routeName),
              child: SingleTripCard(
                place: 'Uttrakhand',
                image: AssetImage('assets/images/sample1.jpg'),
                budget: '50,000',
                spent: '25,000',
                fromDate: '25-Dec-2020',
                toDate: '30-Dec-2020',
              ),
            ),
            SingleTripCard(
              place: 'Jammu and Kashmir',
              image: AssetImage('assets/images/sample2.jpg'),
              budget: '50,000',
              spent: '25,000',
              fromDate: '25-Dec-2020',
              toDate: '30-Dec-2020',
            ),
            SingleTripCard(
              place: 'Jaisalmer',
              image: AssetImage('assets/images/sample3.gif'),
              budget: '50,000',
              spent: '25,000',
              fromDate: '25-Dec-2020',
              toDate: '30-Dec-2020',
            ),
            SingleTripCard(
              place: 'Goa',
              image: AssetImage('assets/images/sample4.jpg'),
              budget: '50,000',
              spent: '25,000',
              fromDate: '25-Dec-2020',
              toDate: '30-Dec-2020',
            ),
            SingleTripCard(
              place: 'Andaman and Nicobar',
              image: AssetImage('assets/images/sample5.png'),
              budget: '50,000',
              spent: '25,000',
              fromDate: '25-Dec-2020',
              toDate: '30-Dec-2020',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
