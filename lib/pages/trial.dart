import 'package:firebase_auth101/pages/android_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth101/utils.dart';

import 'package:firebase_auth101/widgets/inputTextWidget.dart';
import 'package:get/get.dart';

class Welcome extends StatelessWidget{
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image-2-bg.png")
            )
        ),
           child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 53),
              width: 500,
              height: 700,
              child: Stack(
              
                children: [
                  Positioned(
                     left: 140,
                    top: 200,
                     child: Align(
                      child: SizedBox(
                        width: 615,
                        height: 1000,
                        child: Text(
                          'It’s  important\nto have a \nTwinkle in \nyour Wrinkle.',
                          style: SafeGoogleFont (
                            'Keania One',
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                            height: 1.0060000102,
                            color: Color(0xff256927),
                          ),
                        ),
                      ),
                    ),
                  ),
                   Positioned(
              // ellipse72ZP (219:4)
              left: 200,
              bottom: 100,
              child: Align(
                child:  Image.asset(
                    'assets/auto-group-smih.png',
                   
                  ),
                
              ),
            ),
          
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Align(
                alignment: Alignment.bottomCenter,
              child: InkWell(
               onTap: () { 
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Login()));
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(width: 1, color: Colors.red),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  Center(child: Text("LET'S GET STARTED" ,style: TextStyle(color: Colors.white,fontSize: 20,fontStyle: FontStyle.italic)))
                ),
              ),
            ),
            )

          
                ]
              )
            ),
          ]
           )
      )
           
            
           
      
    
    )
    );
  }
}
