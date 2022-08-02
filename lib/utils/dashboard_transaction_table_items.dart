import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TransactionTable extends StatelessWidget {
  const TransactionTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: HexColor('#FFEEEE'),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text('06 January'),
                  Text('Electricity Bill'),
                ],
              ),
            ],
          ),
          Text(
            ' -10,000.00',
            style: TextStyle(
              color: HexColor('#FF0000'),
            ),
          )
        ],
      ),
    );
  }
}
