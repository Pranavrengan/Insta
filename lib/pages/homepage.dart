// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/loginbtn.dart';
import 'package:flutter_application_1/pages/textfield.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color? onHold;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: 380,
                  height: 450,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(126, 177, 173, 173),
                      width: 0,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        height: 50,
                        width: 260,
                        child: Center(
                          child: Text(
                            'I  N  S  T  A  G  R  A  M',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Textfield(
                        hintText: 'Phone number,username, or email',
                        obscure: false,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Textfield(
                        hintText: 'Password',
                        obscure: true,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Loginbtn(hintText: 'L O G I N'),
                      SizedBox(
                        height: 28,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 50, right: 5),
                            child: SizedBox(
                              height: 0.8,
                              width: 120,
                              child: ColoredBox(
                                color: Color.fromARGB(126, 177, 173, 173),
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Text(
                              'OR',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromARGB(255, 162, 157, 157)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 50, left: 5),
                            child: SizedBox(
                              height: 0.8,
                              width: 120,
                              child: ColoredBox(
                                color: Color.fromARGB(126, 177, 173, 173),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onLongPress: () {
                          setState(() {
                            onHold = Colors.black38;
                          });
                        },
                        onLongPressCancel: () {
                          setState(() {
                            onHold = Colors.black;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Row(
                            children: [
                              Text(
                                'F',
                                style: TextStyle(
                                    color: Colors.blue[200], fontSize: 15),
                              ),
                              SizedBox(
                                width: 13,
                              ),
                              Text(
                                'Login in with Facebook',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                    color: (onHold == null)
                                        ? Colors.black
                                        : onHold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 135),
                        child: Row(
                          children: const [
                            Text(
                              'Forget Password?',
                              style: TextStyle(fontSize: 12.5),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              height: 70,
              width: 380,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(126, 177, 173, 173),
                  width: 0,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(color: Colors.blue[400]),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text('Get the app.'),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 180),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: 50,
                      width: 150,
                      color: Colors.black,
                      child: Row(
                        children: const [
                          SizedBox(
                            height: 50,
                            width: 60,
                          ),
                          SizedBox(
                            height: 50,
                            width: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Get it on',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                                Text(
                                  'Google Play',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 50,
                    width: 150,
                    color: Colors.black,
                    child: Row(
                      children: const [
                        SizedBox(
                          height: 50,
                          width: 60,
                        ),
                        SizedBox(
                          height: 50,
                          width: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Get it from',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                              Text(
                                'Microsoft',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
