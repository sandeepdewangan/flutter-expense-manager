import 'package:expense_manager/widget/add_expense_dialog.dart';
import 'package:flutter/material.dart';

final SimpleDialog categoryDialog = SimpleDialog(
  title: Text('Select Category'),
  children: [
    SimpleDialogItem(),
  ],
);

class SimpleDialogItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      child: Container(
        height: 300,
        width: 300,
        child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(1.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: [
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (ctx) => AddExpenseDialog(),
                    fullscreenDialog: true),
              ),
              child: Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.restaurant,
                      color: Colors.green,
                    ),
                    Text('Restaurants'),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.local_taxi,
                      color: Colors.amber,
                    ),
                    Text('Transportation'),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.hotel,
                    ),
                    Text('Accomodation'),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.local_grocery_store,
                      color: Colors.blue,
                    ),
                    Text('Groceries'),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.local_drink_rounded,
                      color: Colors.purple,
                    ),
                    Text('Drinks'),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.flight,
                      color: Colors.blueGrey,
                    ),
                    Text('Flights'),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.shopping_basket,
                      color: Colors.greenAccent,
                    ),
                    Text('Shopping'),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.attractions,
                      color: Colors.pink,
                    ),
                    Text('Activities'),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.money,
                      color: Colors.amberAccent,
                    ),
                    Text('Others'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
