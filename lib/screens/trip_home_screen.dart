import 'package:expense_manager/constant.dart';
import 'package:expense_manager/widget/category_selection_dialog.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

enum PopupMenuActions {
  Delete,
  Add,
}

class TripHomeScreen extends StatelessWidget {
  static const routeName = 'trip-home';

  final Map<String, double> dataMap = {
    "Shooping": 5000,
    "Groceries": 3000,
    "Restaurants": 500,
    "Transportation": 690,
    "Drinks": 900,
    "Activites": 1000,
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Uttrakhand',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: MyConstants.font_dancing,
                fontSize: MyConstants.dancing_heading_size),
          ),
          centerTitle: true,
          elevation: 0,
          actions: [
            PopupMenuButton(
              onSelected: (selected) {
                print(selected);
              },
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                  value: PopupMenuActions.Add,
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Delete',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                  value: PopupMenuActions.Delete,
                ),
              ],
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Total spend
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TOTAL SPEND',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Rs. 50,000',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.lightBlue, width: 4),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            width: 80,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber, width: 4),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Left: Rs. 25,000',
                        style: TextStyle(color: Colors.white70, fontSize: 15),
                      ),
                    ],
                  ),
                  // Daily average
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'DAILY AVERAGE',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Rs. 5,000',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.lightBlue, width: 4),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            width: 20,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber, width: 4),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Left: Rs. 25,000',
                        style: TextStyle(color: Colors.white70, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Tab bar show
            Material(
              color: Theme.of(context).primaryColor,
              child: TabBar(
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                indicatorWeight: 3,
                tabs: [
                  Tab(
                    text: 'EXPENSES',
                  ),
                  Tab(
                    text: 'STATISTICS',
                  ),
                ],
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  // Expenses Tab
                  ListView(
                    children: [
                      //  First Child
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                        ),
                        child: Text(
                          'Thusday, 23-Dec-2020',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text('Title'),
                        leading: CircleAvatar(
                          child: Icon(Icons.ac_unit_outlined),
                        ),
                        subtitle: Text('Subtitle'),
                        trailing: Text('Rs. 2,500'),
                      ),
                      //  Second Child
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                        ),
                        child: Text(
                          'Thusday, 23-Dec-2020',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text('Title'),
                        leading: CircleAvatar(
                          child: Icon(Icons.ac_unit_outlined),
                        ),
                        subtitle: Text('Subtitle'),
                        trailing: Text('Rs. 2,500'),
                      ),
                      //  Third Child
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                        ),
                        child: Text(
                          'Thusday, 23-Dec-2020',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text('Title'),
                        leading: CircleAvatar(
                          child: Icon(Icons.ac_unit_outlined),
                        ),
                        subtitle: Text('Subtitle'),
                        trailing: Text('Rs. 2,500'),
                      ),
                    ],
                  ),
                  // Statistics Tab
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                          ),
                          child: Text(
                            'DISTRIBUTION',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // Pie chart
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: PieChart(dataMap: dataMap),
                        ),
                        // Distribution Details
                        ListTile(
                          dense: true,
                          title: Text('Restaurant'),
                          leading: Icon(
                            Icons.restaurant,
                            color: Colors.blue,
                          ),
                          trailing: Text('Rs. 12,000'),
                        ),
                        ListTile(
                          dense: true,
                          title: Text('Transportation'),
                          leading: Icon(
                            Icons.local_taxi,
                            color: Colors.green,
                          ),
                          trailing: Text('Rs. 12,000'),
                        ),
                        ListTile(
                          dense: true,
                          title: Text('Drink'),
                          leading: Icon(
                            Icons.local_drink,
                            color: Colors.amberAccent,
                          ),
                          trailing: Text('Rs. 12,000'),
                        ),
                        ListTile(
                          dense: true,
                          title: Text('Groceries'),
                          leading: Icon(
                            Icons.local_grocery_store,
                            color: Colors.purple,
                          ),
                          trailing: Text('Rs. 12,000'),
                        ),
                        ListTile(
                          dense: true,
                          title: Text('Activities'),
                          leading: Icon(
                            Icons.local_activity,
                            color: Colors.red,
                          ),
                          trailing: Text('Rs. 12,000'),
                        ),
                        ListTile(
                          dense: true,
                          title: Text('Shopping'),
                          leading: Icon(
                            Icons.shopping_bag,
                            color: Colors.yellow,
                          ),
                          trailing: Text('Rs. 12,000'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => showDialog<void>(
            context: context,
            builder: (ctx) => categoryDialog,
          ),
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
