import 'dart:ui';


import 'package:firebase_auth101/widgets/customized_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth101/screens/home_screen.dart';
import 'package:firebase_auth101/pages/android_login.dart';
import 'package:firebase_auth101/pages/android_signup.dart';




class GetStarted extends StatelessWidget{
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      color: Colors.black,
      image: DecorationImage(
        fit: BoxFit.cover,
        image: Image.asset(
          'assets/old11.jpg',
        ).image,
      ),
    ),
    child: Align(
      alignment: AlignmentDirectional(0.00, 1.00),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0x4C000000),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 30, 24, 50),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Team ‘elder.ly’ is here to take care of \nevery necessity of your senior citizen.',
                    style:TextStyle(
                          fontFamily: 'Comfortaa',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Text(
                      'It’s important to have \na Twinkle in your Wrinkle.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w300,
                            height: 1.5,
                          ),
                    )
                  ),
                 
                ],
              ),
            ),
          )
        ),
      ),
    ),
  ),
    );
  }
}