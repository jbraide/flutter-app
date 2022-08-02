import 'package:daxlinks_app/utils/dashboard_transaction_table_items.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DashboardHome extends StatefulWidget {
  const DashboardHome({Key? key}) : super(key: key);

  @override
  State<DashboardHome> createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: Column(
                  children: [
                    // Top column
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Hello Babajide,',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'Total Balance',
                              ),
                              Text(
                                'N 2,000,000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'CLICK BUTTON',
                            ),
                          )
                        ],
                      ),
                    ),

                    // Dashboard data card
                    Row(
                      children: [
                        Card(
                          elevation: 10,
                          shadowColor: Colors.black,
                          // color: Co,
                          child: SizedBox(
                            // width of the card
                            width: MediaQuery.of(context).size.width / 1.1,

                            // height: 100,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Column(
                                children: [
                                  // row 1
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          '1 Wk',
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          '1 Month',
                                        ),
                                      ),
                                    ],
                                  ),

                                  // row 2
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 12.0,
                                      bottom:
                                          MediaQuery.of(context).size.height /
                                              15,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Expenses'),
                                            Text(
                                              'N 1.5m',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Income'),
                                            Text(
                                              'N 2.2m',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Savings'),
                                            Text(
                                              'N 500k',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),

                    // Link account button and dashboard toggle
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Link New Account',
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.stacked_line_chart),
                            label: Text('Graph'),
                          )
                        ],
                      ),
                    ),

                    // Transactions container
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: HexColor('#000'),
                            width: 0.2,
                          )),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              'Transactions',
                              style: TextStyle(),
                            ),
                          ),
                          // Transaction Table
                          SizedBox(
                            // height of the Box

                            height: MediaQuery.of(context).size.height / 4,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: const <Widget>[
                                  // transaction data table

                                  TransactionTable(),
                                  TransactionTable(),
                                  TransactionTable(),
                                  TransactionTable(),
                                  TransactionTable(),
                                  TransactionTable(),
                                  TransactionTable(),
                                  TransactionTable(),
                                  TransactionTable(),
                                  TransactionTable(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shield),
              label: "Expenses",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.savings),
              label: "Savings",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.money),
              label: "Loan",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_tree),
              label: "Invest",
            ),
          ],
        ),
      ),
    );
  }
}
