// ignore_for_file: deprecated_member_use

import 'package:daxlinks_app/pages/welcome_screen/social_finance_network.dart';
import 'package:daxlinks_app/utils/welcome_screens.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TrackSpending extends StatelessWidget {
  const TrackSpending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: WelcomeScreens(
        imagePath: 'lib/assets/images/track_spending.png',
        line1: 'Easy Way to track',
        line2: 'your spending.',
        subtitle: 'monitor your cash flow with few and easy steps',
        nextRoute: SocialFinanceNetwork(),
      )),
    );
  }
}
