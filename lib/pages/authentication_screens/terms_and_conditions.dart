import 'package:daxlinks_app/pages/authentication_screens/create_account.dart';
import 'package:daxlinks_app/pages/welcome_screen/investment.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor('#0019ff'),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'TERMS & CONDITIONS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                      // margin: EdgeInsets.all(),
                      height: MediaQuery.of(context).size.height / 1.49,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor mauris aliquet lectus finibus, ac porta sem vulputate. Sed a hendrerit velit. Cras porttitor orci sagittis nulla interdum, et mattis felis condimentum. Nunc tristique hendrerit leo, nec cursus odio. Donec blandit mollis massa ac placerat. In et nulla lacinia, pulvinar augue sit amet, ultricies nibh. Integer interdum sed risus vitae dictum.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                height: 1.3,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor mauris aliquet lectus finibus, ac porta sem vulputate. Sed a hendrerit velit. Cras porttitor orci sagittis nulla interdum, et mattis felis condimentum. Nunc tristique hendrerit leo, nec cursus odio. Donec blandit mollis massa ac placerat. In et nulla lacinia, pulvinar augue sit amet, ultricies nibh. Integer interdum sed risus vitae dictum.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                height: 1.3,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor mauris aliquet lectus finibus, ac porta sem vulputate. Sed a hendrerit velit. Cras porttitor orci sagittis nulla interdum, et mattis felis condimentum. Nunc tristique hendrerit leo, nec cursus odio. Donec blandit mollis massa ac placerat. In et nulla lacinia, pulvinar augue sit amet, ultricies nibh. Integer interdum sed risus vitae dictum.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                height: 1.3,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor mauris aliquet lectus finibus, ac porta sem vulputate. Sed a hendrerit velit. Cras porttitor orci sagittis nulla interdum, et mattis felis condimentum. Nunc tristique hendrerit leo, nec cursus odio. Donec blandit mollis massa ac placerat. In et nulla lacinia, pulvinar augue sit amet, ultricies nibh. Integer interdum sed risus vitae dictum.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                height: 1.3,
                              ),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor mauris aliquet lectus finibus, ac porta sem vulputate. Sed a hendrerit velit. Cras porttitor orci sagittis nulla interdum, et mattis felis condimentum. Nunc tristique hendrerit leo, nec cursus odio. Donec blandit mollis massa ac placerat. In et nulla lacinia, pulvinar augue sit amet, ultricies nibh. Integer interdum sed risus vitae dictum.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                height: 1.3,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor mauris aliquet lectus finibus, ac porta sem vulputate. Sed a hendrerit velit. Cras porttitor orci sagittis nulla interdum, et mattis felis condimentum. Nunc tristique hendrerit leo, nec cursus odio. Donec blandit mollis massa ac placerat. In et nulla lacinia, pulvinar augue sit amet, ultricies nibh. Integer interdum sed risus vitae dictum.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                height: 1.3,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      // disagree
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          side: BorderSide(
                            width: 1.5,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 10,
                            vertical: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(
                            context,
                          );
                        },
                        child: Text(
                          'I DISAGREE',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),

                      // agree
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: HexColor('#FA7800'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 10,
                              vertical: 20,
                            )),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateAccount()));
                        },
                        child: Text(
                          'I AGREE',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
