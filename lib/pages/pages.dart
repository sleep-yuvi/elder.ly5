import 'package:firebase_auth101/pages/android_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth101/utils.dart';

import 'package:firebase_auth101/widgets/inputTextWidget.dart';
import 'package:get/get.dart';
import 'package:firebase_auth101/screens/language.dart';

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
          'assets/old1.jpg',
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
                          fontSize: 18,
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





class GetStart extends StatelessWidget{
  const GetStart({Key? key}) : super(key: key);

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
          'assets/home-care-nurse-help-an-elderly-women.jpg',
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
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Text(
                      'YOUR FAMILY IS OUR FAMILY',
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: InkWell(
                      onTap:  () { 
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const language()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 36, 36),
                    border: Border.all(width: 1, color: Color.fromARGB(255, 0, 36, 36)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:  Center(child: Text("LET'S GET STARTED" ,style: TextStyle(color: Colors.white,fontSize: 20, fontFamily: 'Comfortaa',)))
                ),
                    
                  ),
                  )
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
