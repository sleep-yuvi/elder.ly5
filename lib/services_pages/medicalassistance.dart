import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth101/utils.dart';
import 'package:firebase_auth101/payment/payment.dart';
import 'package:firebase_auth101/screens/homepage.dart';
import 'package:firebase_auth101/naiva.dart';


class MEDICAL extends StatelessWidget {
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
          onPressed: () => Navigator.pop(context,true),
           child: Text('Yes'),
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
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(icon: Icon(Icons.arrow_back),
          onPressed:() {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=>   NavigationMenu()),
            );
          },
          ),
        ),
       
      body: Container(
      
        
        width: double.infinity,
        child: Container(
          // androidsmall1VTK (219:2)
          padding: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 29*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xfff9f9e5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Container(
                // autogroupj6nbC79 (BepLCaSA5i4zg34YCoj6nb)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28*fem, 8*fem),
                width: 330*fem,
                height: 239*fem,
                child:Image.asset(
                  'assets/image-6.png'
                ),
              ),
              
              Container(
                // autogroupcsuzbHP (E68kx5vKiHMQpNYkZ1csUZ)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                width: double.infinity,
                height: 207*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle388YD (256:7)
                      left: 0*fem,
                      top: 133.0000152588*fem,
                      child: Align(
                        child: SizedBox(
                          width: 295*fem,
                          height: 104*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              color: Color(0xfff7ecf9),
                              borderRadius: BorderRadius.only (
                                topLeft: Radius.circular(30*fem),
                                topRight: Radius.circular(60*fem),
                                bottomRight: Radius.circular(30*fem),
                                bottomLeft: Radius.circular(60*fem),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // medicalassistanceinadditiontod (256:6)
                      left: 10*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 251*fem,
                          height: 300*fem,
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont (
                                'JejuHallasan',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5*ffem/fem,
                                color: Color(0xff000000),
                              ),
                              children: [
                                TextSpan(
                                  text: '\nMEDICAL\n\nASSISTANCE\n\n',
                                  style: SafeGoogleFont (
                                    'Comfortaa',
                                    fontSize: 32*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 0.625*ffem/fem,
                                    color: Color(0xff256927),
                                  ),
                                ),
                                TextSpan(
                                  text: 'In addition to delivering medicines to your door step, we also offer geriatric care.\n\n\nSTARTING PRICE                  @ RS 200/hr\n3 hr.                                        @ Rs 400\nFULL DAY                              @ Rs 600',
                                  style: SafeGoogleFont (
                                    'Comfortaa',
                                    fontSize: 10*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff256927),
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
              
              TextButton(
                
                onPressed: () {
                         
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) =>const PaymentPage()));
                         
                        },   
              
                child: Center(
                  child: Text(
                    'BOOK  NOW',
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
             
              TextButton(
                onPressed: () {}, 
              
                child: Center(
                  child: Text(
                    'SCHEDULE',
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