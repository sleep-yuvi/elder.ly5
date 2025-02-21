import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';


import 'package:firebase_auth101/hindi/hindi_Signup.dart';
import 'package:firebase_auth101/hindi/hindi_login.dart';

class ForgotPassword_hindi extends StatefulWidget {
  const ForgotPassword_hindi({Key? key}) : super(key: key);

  @override
  State<ForgotPassword_hindi> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword_hindi> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("पासवर्ड भूल गए हैं?",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Segoe UI',
              fontSize: 30,
              shadows: [
                Shadow(
                  color: const Color(0xba000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                )
              ],
            )),
        //centerTitle: true,
        leading: InkWell(
          onTap: () {
                      Navigator.pop(context);
                    },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Image.asset(
                'assets/img3.png',
                width: 150,
                height: 150,
              ),
              SizedBox(
                height: 25,
              ),
              Text('पासवर्ड भूल गए हैं?',style: TextStyle(fontSize: 22,  fontFamily: 'Joti One', fontWeight: FontWeight.bold),),
              Text('यह हम सभी के साथ होता है. हम आपको आपका पासवर्ड रीसेट करने के लिए एक लिंक भेजेंगे. ',style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
                ),
                 SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                          controller: _emailController,
                      
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                     Icons.mail,
                    color: Colors.black,
                    size: 32.0, /*Color(0xff224597)*/
                  ),
                        labelText: "अपना ईमेल दर्ज करें",
                        labelStyle: TextStyle(color: Colors.black45, fontSize: 18.0),
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: ()async {
                try{
               await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text.trim());
               showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                                title: const Text(
                                    " पासवर्ड रीसेट ईमेल भेजा गया"),
                                actions: [
                                  ElevatedButton(
                                    child: const Text("लॉगिन स्क्रीन पर वापस जाएँ"),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                   Hindi_Login()));
                                    },
                                  )
                                ]));
                                }on FirebaseException catch (e) {
                    debugPrint("error is ${e.message}");
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                                title: const Text(
                                    " ग़लत नाम या पासवर्ड. कृपया दोबारा रजिस्टर करें या सुनिश्चित करें वह नाम और पासवर्ड सही है."),
                                actions: [
                                  ElevatedButton(
                                    child: const Text("अभी रजिस्टर करे"),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                   Hindi_SignUp()));
                                    },
                                  )
                                ]));
                }
              },
                    child: Ink(
                    decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromARGB(255, 0, 36, 36),
                              offset: const Offset(1.1, 1.1),
                              blurRadius: 10.0),
                        ],
                        color: Color.fromARGB(255, 0, 36, 36), // Color(0xffF05945),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "लिंक भेजें",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                    ),
              )
            ],
          )
          ),
      ),
        bottomNavigationBar: Stack(
        children: [
          new Container(
            height: 50.0,
            color: Colors.white,
            child: Center(
                child: Wrap(
              children: [
                Text(
                  "पासवर्ड याद है?  ",
                  style: TextStyle(
                      color: Colors.grey[600], fontWeight: FontWeight.bold),
                ),
                Material(
                    child: InkWell(
                  onTap: () { Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>  Hindi_Login()));
                                },
                  child: Text(
                    "लॉग इन करें",
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                )),
              ],
            )),
          ),
        ],
      ),
    ),
    );
  }
}
