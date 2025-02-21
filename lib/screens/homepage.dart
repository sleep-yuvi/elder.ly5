import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth101/utils.dart';
import 'package:firebase_auth101/widgets/navi.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth101/services_pages/medicalassistance.dart';
import 'package:firebase_auth101/services_pages/banking.dart';
import 'package:firebase_auth101/services_pages/travel.dart';
import 'package:firebase_auth101/services_pages/INTELLECTUAL.dart';
import 'package:firebase_auth101/services_pages/marketplace.dart';
import 'package:firebase_auth101/services_pages/bills.dart';
import 'package:firebase_auth101/screens/about.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';


class HOME1 extends StatelessWidget {
  
 Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Do you want to exit app?'),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.pop(context,false),
           child: Text('No'),
           ),
             ElevatedButton(
              child: Text('Yes'),
          onPressed: exit(0),
           
           ),
      ],
    ),
     );
 
  @override
  Widget build(BuildContext context) {
    double baseWidth = 300;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return WillPopScope(
      onWillPop: () async {
        print('Back Button Pressed!');
        final shouldPop = await showWarning(context);
        return shouldPop ?? false;
      },
      child: Scaffold(
        drawer: NavigationDrawerWidget(),
         appBar: PreferredSize(
          preferredSize: Size.fromHeight(75.0), 
         child: AppBar(
          
    
            title: Text(
                    'Hello!!!',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Comfortaa',
                      fontSize: 18*ffem,
                      fontWeight: FontWeight.w700,
                      height: 0.6285714286*ffem/fem,
                      color: Color(0xff9ba2a8),
                    ),
                  ),
            centerTitle: true,
            backgroundColor: Colors.white30,
          ),
      ),
      body:SingleChildScrollView(
        padding: const EdgeInsets.only(top: 15.0),
        
        child: Container(
          // androidlarge10SUM (163:24)
          padding: EdgeInsets.fromLTRB(0*fem, 7*fem, 0*fem, 0*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
             
              Container(
                // autogroupqwg5QJh (E68g2j7oW9cg5x1yksqWG5)
                padding: EdgeInsets.fromLTRB(0*fem, 11*fem, 0*fem, 16*fem),
                width: double.infinity,
                child: Column(
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              child: AnotherCarousel(
                images: const [
                  AssetImage("assets/image-13.png"),
                  AssetImage("assets/old1.jpg"),
                  AssetImage("assets/rectangle-46.png"),
                 
                  
                ],
                dotSize: 6,
                indicatorBgPadding: 5.0,
              ),
              
            )
          ],
        ),
              ),
              Container(
                // autogroupdkbbJVs (E68djYSikPt8MoWnbqdKbb)
                padding: EdgeInsets.fromLTRB(40*fem, 6*fem, 55*fem, 13*fem),
                width: 330*fem,
                decoration: BoxDecoration (
                  color: Color(0xfff7ecf9),
                ),
              
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupfwvyD73 (E68e4nPfJPzpRAserXfWvy)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        
                        children: [
                          Container(
                            // autogroupm2px9WV (E68eDSotp7yp87Bas7m2PX)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 1*fem),
                            padding: EdgeInsets.fromLTRB(10*fem, 9*fem, 10*fem, 1*fem),
                            width: 110*fem,
                            decoration: BoxDecoration (
                              color: Color(0xfff9f9e5),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                             
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                               TextButton(onPressed: () {
                         
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => MEDICAL()));
                         
                        },  
                               child:Container(
                                  // image6qeD (221:18)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                  width: 90*fem,
                                  height: 60*fem,
                                
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10*fem),
                                  
                                    child: Image.asset(
                                      'assets/image-6-oWM.png',
                                      fit: BoxFit.cover,
                                      
                                      
                                    ),
                                  ),
                                  
                          
                        
                                ),
                              
                               ),
                                Container(
                                  // medical9uo (221:22)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                  child: Text(
                                    'MEDICAL',
                                    textAlign: TextAlign.center,
                                    
                                    style: SafeGoogleFont (
                                      'Comfortaa',
                                     fontSize: 7*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 0.8571428571*ffem/fem,
                                    color: Color(0xff256927),
                                    ),
                                    
                                  ),
                               
                                ),
                              ],
                            ),
                            
                          ),
                      
                          Container(
                            // autogroup3nihft9 (E68eJ7LnhpS3ME7rZb3NiH)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(6*fem, 6*fem, 7*fem, 3*fem),
                            width: 110*fem,
                            decoration: BoxDecoration (
                              color: Color(0xfff9f9e5),
                              borderRadius: BorderRadius.circular(10*fem),
                              
                            ),
                            
                            
                           child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                               TextButton(onPressed: () {
                         
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => BANKING()));
                         
                        },  
                               child:Container(
                                  // image6qeD (221:18)
                                
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                                    width: 90*fem,
                                  height: 60*fem,
                                
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10*fem),
                                  
                                    child: Image.asset(
                                      'assets/image-7.png',
                                      fit: BoxFit.cover,
                                      
                                      
                                    ),
                                  ),
                                  
                          
                        
                                ),
                              
                               ),
                                Container(
                                  // medical9uo (221:22)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                  child: Text(
                                    'BANKING',
                                    textAlign: TextAlign.center,
                                    
                                    style: SafeGoogleFont (
                                      'Comfortaa',
                                     fontSize: 7*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 0.8571428571*ffem/fem,
                                    color: Color(0xff256927),
                                    ),
                                    
                                  ),
                               
                                ),
                              ],
                            ),
                                
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroup8taqjND (E68eSmm2DYR34ARnaB8tAq)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 8*fem),
                      width: double.infinity,
                      height: 86*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupanx7rSq (E68ebwARS268KaQg82anX7)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(6*fem, 6*fem, 7*fem, 3*fem),
                            width: 110*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xfff9f9e5),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                               TextButton(
                                onPressed: () {
                         
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Travel()));
                         
                        },  
                                child: Container(
                                  // image9JJq (232:39)
                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                  width: 90*fem,
                                  height: 60*fem,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10*fem),
                                    child: Image.asset(
                                      'assets/image-9-Dph.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                child:Text(
                                  // travelCQD (244:2)
                                  'TRAVEL',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Comfortaa',
                                 fontSize: 7*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 0.8571428571*ffem/fem,
                                    color: Color(0xff256927),
                                  ),
                                ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupf8ayXhP (E68eh1rHk1cmWm55SDf8ay)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(6*fem, 6*fem, 7*fem, 3*fem),
                            width: 110*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xfff9f9e5),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed:  () {
                         
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => INTELLECTUAL()));
                         
                        }, 
                                child: Container(
                                  // image8qi5 (224:28)
                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                                    width: 90*fem,
                                  height: 60*fem,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10*fem),
                                    child: Image.asset(
                                      'assets/image-8-mc1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                ),
                                Container(
                                  // intellectualMwK (224:30)
                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                  child: Text(
                                    'INTELLECTUAL',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Comfortaa',
                                      fontSize: 7*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 0.8571428571*ffem/fem,
                                    color: Color(0xff256927),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupycqjfSD (E68etvg7KdbPMoFET2YCqj)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                      width: double.infinity,
                      height: 88*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupvvwqnFw (E68f2b81RrCBwnDFP5vvWq)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 31*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(4*fem, 7*fem, 6*fem, 6*fem),
                            width: 110*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xfff9f9e5),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                               TextButton(
                                onPressed:  () {
                         
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Meeting()));
                         
                        }, 
                               child: Container(
                                  // image12HCh (245:10)
                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                  width: 90*fem,
                                  height: 60*fem,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10*fem),
                                    child: Image.asset(
                                      'assets/image-13.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ), 
                               ),
                                Container(
                                  // marketplace18h (245:12) 
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                  child: Text(
                                    'MEETINGS',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Comfortaa',
                                      fontSize: 7*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 0.8571428571*ffem/fem,
                                    color: Color(0xff256927),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroup84swWr9 (E68f7qUGJkxCKnmJYN84sw)
                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 31*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(4*fem, 7*fem, 6*fem, 6*fem),
                            width: 110*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xfff9f9e5),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                               TextButton(
                                onPressed: () {
                         
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => bills()));
                         
                        }, 
                               child:  Container(
                                  // image10dfs (244:4)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                                    width: 90*fem,
                                  height: 60*fem,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10*fem),
                                    child: Image.asset(
                                      'assets/image-10-eAZ.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                               ),
                               Container(
                                 margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                child:Text(
                                  // payingbills8sX (244:5)
                                  'PAYING BILLS',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Comfortaa',
                                    fontSize: 7*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 0.8571428571*ffem/fem,
                                    color: Color(0xff256927),
                                  ),
                                ),
                               ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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