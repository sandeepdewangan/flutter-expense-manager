import 'package:flutter/material.dart';

import '../constant.dart';

class SingleTripCard extends StatelessWidget {
  final image;
  final place;
  final spent;
  final budget;
  final toDate;
  final fromDate;

  SingleTripCard(
      {this.image,
      this.place,
      this.spent,
      this.budget,
      this.toDate,
      this.fromDate});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          // Top Image
          Stack(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image(
                    image: image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  place,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: MyConstants.font_dancing,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          // Description
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                Icon(Icons.calendar_today),
                SizedBox(
                  width: 5,
                ),
                Text('$toDate to $fromDate'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 3),
            child: Row(
              children: [
                Icon(Icons.monetization_on_outlined),
                SizedBox(
                  width: 5,
                ),
                Text('Rs. $spent spent of Rs. $budget'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
