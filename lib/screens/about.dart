import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth101/utils.dart';

class third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 350;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
       appBar: AppBar(
        leading: InkWell(
          onTap: () {
                      Navigator.pop(context);
                    },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white30,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 0, 36, 36),
        elevation: 0.0,
      ),
      body:Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        // androidlarge9AzH (145:3)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 27*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color.fromARGB(255, 0, 36, 36),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // autogroupuh7fAmK (NvqxBNPKvq7HjfHPPPUH7F)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
              width: 400*fem,
              height: 250*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle204bo (156:17)
                    left: 161*fem,
                    top: 62*fem,
                    child: Align(
                      child: SizedBox(
                        width: 139*fem,
                        height: 40*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xffffe19c),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ellipse2kDj (149:9)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 279*fem,
                        height: 250*fem,
                        child: Image.asset(
                          'assets/image-8.png',
                          width: 279*fem,
                          height: 250*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // aboutusFRP (156:18)
                    left: 185.5*fem,
                    top: 62*fem,
                    child: Align(
                      child: SizedBox(
                        width: 107*fem,
                        height: 46*fem,
                        child: Text(
                          'About Us',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Quicksand',
                            fontSize: 25*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.84*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // atelderlyourgoalistomakeyoushi (289:4)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 34*fem),
              width: double.infinity,
              constraints: BoxConstraints (
                maxWidth: 272*fem,
              ),
              child: Text(
                '\n\nAt elder.ly, our goal is to make you shine like a star. We create flattering, contemporary services for our beloved elders, specializing in versatile styles for everyday life.\n\n\n Whether you want the latest medical assistance, a timeless buddy to talk with or city travel assistance just for a special event, elder.ly has your answer.\n\n\nWe believe that you are your best accessory. \nThis is why we offer a full-service experience including healthcare, banking and intellectual companionship services.',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'Lexend',
                  fontSize: 12*ffem,
                  fontWeight: FontWeight.w400,
                  height: 0.8333333333*ffem/fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // autogroupmnphLjf (NvqxKceb2G1sUXsBnFmnph)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.5*fem, 0*fem),
              width: 288.5*fem,
              height: 148*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle21Frd (161:22)
                    left: 0*fem,
                    top: 9*fem,
                    child: Align(
                      child: SizedBox(
                        width: 283*fem,
                        height: 139*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xffffe19c),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // calloremailtobookanappointment (161:23)
                    left: 0.5*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 288*fem,
                        height: 136*fem,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: SafeGoogleFont (
                              'Irish Grover',
                              fontSize: 15*ffem,
                              fontWeight: FontWeight.w400,
                              height: 3.0666666667*ffem/fem,
                              color: Color(0xff003637),
                            ),
                            children: [
                              TextSpan(
                                text: 'Call or email to book an appointment: ',
                                style: SafeGoogleFont (
                                  'Lexend',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 3.0666666667*ffem/fem,
                                  color: Color(0xff003637),
                                ),
                              ),
                              TextSpan(
                                text: '858-294-7392\n or \n',
                                style: SafeGoogleFont (
                                  'Lexend',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 2*ffem/fem,
                                  color: Color(0xff003637),
                                ),
                              ),
                              TextSpan(
                                text: 'teamelder.ly1@gmail.com',
                                style: SafeGoogleFont (
                                  'Lexend',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 2*ffem/fem,
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff003637),
                                  decorationColor: Color(0xff003637),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
          );
  }
}