import 'package:daxlinks_app/pages/welcome_screen/overdraft.dart';
import 'package:daxlinks_app/utils/welcome_screens.dart';
import 'package:flutter/material.dart';

class SocialFinanceNetwork extends StatelessWidget {
  const SocialFinanceNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: WelcomeScreens(
          imagePath: 'lib/assets/images/piggybank.png',
          line1: 'Social finance',
          line2: 'Network',
          subtitle:
              'Saving is now fun, join millions to save and get rewards for saving',
          nextRoute: Overdraft(),
        )),
      ),
    );
  }
}
