import 'package:daxlinks_app/pages/authentication_screens/sign_in.dart';
import 'package:daxlinks_app/pages/authentication_screens/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Investment extends StatelessWidget {
  const Investment({Key? key}) : super(key: key);

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
                  Image.asset(
                    'lib/assets/images/piggybank.png',
                    width: 350,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Investment',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#0019ff'),
                        letterSpacing: 2.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Dont miss out all lots of investment oppurtunities around you',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        width: 1.5,
                        color: HexColor('#0019ff'),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 8,
                        vertical: 20,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                        color: HexColor('#0019ff'),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: HexColor('#0019ff'),
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 8,
                        vertical: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TermsAndConditions()));
                    },
                    child: Text('NEW ACCOUNT'),
                  )
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
