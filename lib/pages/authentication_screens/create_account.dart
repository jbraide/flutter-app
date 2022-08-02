import 'package:daxlinks_app/pages/authentication_screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var space_between_forms = SizedBox(
      height: size.height / 30,
    );
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        // backgroundColor: HexColor('#E2E5FF'),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              HexColor('#fffff'),
              // Color(0xffe2e5ff),
              Color(0xffe2e5ff),
            ],
            stops: [0.2, 1.0],
          )),
          child: SafeArea(
            child: ListView(
              children: [
                Wrap(
                  children: [
                    // Expanded(child: SizedBox.shrink()),
                    Column(
                      children: [
                        SizedBox(height: size.height / 8),
                        Text(
                          'Create Account',
                          style: TextStyle(
                            fontSize: size.width / 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // SizedBox(height: 30),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width / 19,
                            vertical: size.height / 20,
                          ),
                          child: Form(
                              child: Column(
                            children: <Widget>[
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Name',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: HexColor('#001AFF'),
                                      width: 5.0,
                                    ),
                                  ),

                                  // border color
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      width: 1.3,
                                      color: HexColor('#001AFF'),
                                    ),
                                  ),
                                ),
                              ),
                              space_between_forms,
                              TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  hintText: 'Email',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),

                                  // border color
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      width: 1.3,
                                      color: HexColor('#001AFF'),
                                    ),
                                  ),
                                ),
                              ),
                              space_between_forms,
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  // border color
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      width: 1.3,
                                      color: HexColor('#001AFF'),
                                    ),
                                  ),
                                ),
                              ),
                              space_between_forms,
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Confirm Password',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),

                                  // border color
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      width: 1.3,
                                      color: HexColor('#001AFF'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                        ),
                      ],
                    ),

                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'SIGN UP',
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 3.0,
                            vertical: 20,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 60.0,
                        vertical: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Already have an account?',
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignIn()));
                            },
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
