import 'package:daxlinks_app/pages/authentication_screens/create_account.dart';
import 'package:daxlinks_app/pages/dashboard/dashboard_home.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    // reusable stuff
    var sizeContext = MediaQuery.of(context).size;
    var spacingHorizontal = sizeContext.width;
    var spacingVertical = sizeContext.height;

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: ListView(
                children: <Widget>[
                  Padding(
                    // padding for the form
                    padding: EdgeInsets.only(
                      top: spacingVertical / 8,
                      // bottom: spacingVertical / 18,
                    ),
                    child: Form(
                      child: Column(
                        children: [
                          Text(
                            'Sign In',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: spacingVertical / 20,
                            ),
                          ),
                          SizedBox(
                            height: spacingVertical / 35,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: spacingVertical / 18,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // forgot password
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 13.0,
                    ),
                    child: Text(
                      'Forgot Password?',
                      textAlign: TextAlign.right,
                      style: TextStyle(),
                    ),
                  ),

                  // singin + fingerprint buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // sign in button
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DashboardHome()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: HexColor('#0019FF'),
                          padding: EdgeInsets.symmetric(
                            horizontal: 75,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'SIGN IN',
                        ),
                      ),

                      // finger print button
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: HexColor('#0019FF'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          child: Icon(
                            Icons.fingerprint,
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'OR',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // social media
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Google button
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent.withOpacity(0.05),
                        ),
                        onPressed: () {},
                        icon: ImageIcon(
                          AssetImage('lib/assets/icons/google.png'),
                          color: HexColor('#000'),
                        ),
                        label: Text(
                          'Google',
                          style: TextStyle(
                            color: HexColor('#000000'),
                          ),
                        ),
                      ),

                      // facebook button
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent.withOpacity(0.05),
                        ),
                        onPressed: () {},
                        icon: ImageIcon(
                          AssetImage('lib/assets/icons/facebook.png'),
                          color: HexColor('#000'),
                        ),
                        label: Text(
                          'Facebook',
                          style: TextStyle(color: HexColor('#000')),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Don\'t have an existing account?',
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreateAccount()));
                          },
                          child: Text(
                            'Sign Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    ),
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
