import 'package:daxlinks_app/pages/welcome_screen/investment.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SaveWithEase extends StatelessWidget {
  const SaveWithEase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset('lib/assets/images/piggybank.png'),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Save with Ease',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#0019ff')),
                  ),
                ],
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    width: 1.5,
                    color: HexColor('#0019ff'),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Investment()));
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: HexColor('#0019ff'),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
