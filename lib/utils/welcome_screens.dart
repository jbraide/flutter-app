import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WelcomeScreens extends StatelessWidget {
  final String imagePath;
  final String line1;
  final String line2;
  final subtitle;
  final nextRoute;

  const WelcomeScreens({
    Key? key,
    required this.imagePath,
    required this.line1,
    required this.line2,
    required this.subtitle,
    required this.nextRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: [
            Image.asset(imagePath),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                Text(
                  line1,
                  style: TextStyle(
                      color: HexColor('#0019FF'),
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                Text(
                  line2,
                  style: TextStyle(
                      color: HexColor('#0019FF'),
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => nextRoute));
          },
          child: Text(
            'Next',
            style: TextStyle(
              color: HexColor('#0019ff'),
            ),
          ),
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            side: BorderSide(
              color: HexColor('#0019ff'),
              width: 1,
            ),
          ),
        ),

        // ElevatedButton(
        //     child: Text(
        //       'Next',
        //     ),
        //     style: ElevatedButton.styleFrom(
        //         padding:
        //             const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
        //         shape: RoundedRectangleBorder(
        //             side: BorderSide(
        //                 color: HexColor('#0019FF'),
        //                 width: 1,
        //                 style: BorderStyle.solid),
        //             borderRadius: BorderRadius.circular(50))),
        //     onPressed: () => {}),
      ],
    );
  }
}
