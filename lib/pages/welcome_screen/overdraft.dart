import 'package:daxlinks_app/pages/welcome_screen/save_with_ease.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Overdraft extends StatelessWidget {
  const Overdraft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset('lib/assets/images/loans.png'),
              Column(
                children: [
                  Text(
                    'Overdraft',
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#0019FF')),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'You can not be stranded, get access to quick loans.',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SaveWithEase()),
                  );
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0019ff),
                  ),
                ),
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 120,
                      vertical: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    side: BorderSide(
                      color: Color(0xFF0019ff),
                      width: 2,
                    )),
              )
            ],
          ),
        )),
      ),
    );
  }
}
