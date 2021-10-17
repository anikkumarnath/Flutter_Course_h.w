import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_day/profilepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(103, 239, 200, 0.5019607843137255),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: 400,
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Color.fromRGBO(158, 245, 44,1),
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                  image: DecorationImage(
                    image: AssetImage("images/cover.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              //Text Container

              Container(
                height: 200,
                width: 350,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome to flutter advance project.It is an ICTD Project. "
                        "Let's get started.",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w800,
                        fontSize: 25,
                        fontStyle: FontStyle.normal,
                        wordSpacing: 5,
                        height: 1,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                        decorationStyle: TextDecorationStyle.wavy,
                        decorationColor: Color.fromRGBO(238, 82, 134, 1.0)
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              // Enter button container
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>ProfilePage(),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: 100,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 3,
                      style: BorderStyle.solid,
                      color: Color.fromRGBO(19, 117, 11, 1),
                    ),
                    color: Color.fromRGBO(105, 219, 143, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text(
                        "Start",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 20,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
