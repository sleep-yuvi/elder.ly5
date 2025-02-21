import 'package:firebase_auth101/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth101/utils.dart';
import 'package:firebase_auth101/naiva.dart';


class AFNAN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 300;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
         body:SingleChildScrollView(
      padding: const EdgeInsets.only(top: 15.0),
    child: Container(
      width: double.infinity,
      child: Container(
        // androidsmall14svP (625:12)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 90*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfff9fae5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupuwf9Ptj (BepXDgEvUidvFqCSinuWF9)
              padding: EdgeInsets.fromLTRB(43*fem, 89*fem, 44*fem, 49*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // yourguideisXEF (625:13)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 34*fem),
                    constraints: BoxConstraints (
                      maxWidth: 182*fem,
                    ),
                    child: Text(
                      'Your Guide\n\n\n\nis',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Josefin Sans',
                        fontSize: 36*ffem,
                        fontWeight: FontWeight.w400,
                        height: 0.2777777778*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // whatsappimage20240219at10051bz (625:15)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 32*fem),
                    width: 174*fem,
                    height: 150*fem,
                    child: Image.asset(
                      'assets/AFnan.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    // anweshabarmanW6B (625:16)
                    'MD.AFNAN   UL-HAQUE',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Josefin Sans',
                      fontSize: 20*ffem,
                      fontWeight: FontWeight.w400,
                      height: 0.5*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupgmytqPM (BepX7gQv3gLmY78xFcgmYT)
              padding: EdgeInsets.fromLTRB(34*fem, 24*fem, 40*fem, 42*fem),
              width: double.infinity,
              height: 96*fem,
              decoration: BoxDecoration (
                color: Color(0xffd9d9d9),
              ),
              child: Center(
                // contactdetailswillbeprovidedto (626:20)
                child: SizedBox(
                  child: Container(
                    constraints: BoxConstraints (
                      maxWidth: 226*fem,
                    ),
                    child: Text(
                      'Contact details will be provided to you\n\nbefore 12hr of your appointment.',
                      style: SafeGoogleFont (
                        'Josefin Sans',
                        fontSize: 9*ffem,
                        fontWeight: FontWeight.w400,
                        height: 0.7692307692*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
              SizedBox(
                      height: 25,
                      width: 1,
                    ),
            TextButton(
              onPressed: () {
                       
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => NavigationMenu()));
                       
                      },
            child: Center(
                child: Text(
                  'REDIRECT TO HOMEPAGE',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 10*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.5*ffem/fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            
            style: TextButton.styleFrom(
              backgroundColor: Color(0xff003637),
              
            ),
            
            ),
          
          ],
        ),
      ),
     ),
         ),
          );
  }
}