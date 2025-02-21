import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:firebase_auth101/screens/home_screen.dart';
import 'package:firebase_auth101/hindi/hindi_one.dart';
import 'package:firebase_auth101/hindi/hindi_home.dart';
import 'package:firebase_auth101/screens/homepage.dart';
import 'package:firebase_auth101/naiva.dart';


class MyOtpHindi extends StatefulWidget {
  const MyOtpHindi({Key? key}) : super(key: key);

  @override
  State<MyOtpHindi> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtpHindi> {
final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
     final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    var code="";

    return Scaffold(
      extendBodyBehindAppBar: true,
     appBar: AppBar(
        title: Text("मोबाइल सत्यापन",
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
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img1.png',
                width: 150,
                height: 150,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "मोबाइल सत्यापन",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "प्राप्त ओटीपी दर्ज करें",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Pinput(
                length: 6,
                // defaultPinTheme: defaultPinTheme,
                // focusedPinTheme: focusedPinTheme,
                // submittedPinTheme: submittedPinTheme,

                showCursor: true,
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                onChanged: (value) {
                  code=value;
                },
                onCompleted: (pin) => print(pin),
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
                    onPressed: () async {
                      try{
PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: MyPhoneHindi.verify, smsCode: code);

    // Sign the user in (or link) with the credential
    await auth.signInWithCredential(credential);
       Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => NavigationMenu()));
                      }
                      catch(e){
                        print("wrong otp");

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
                        "फोन नंबर की जांच",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                    ),
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          "hindi_one",
                          (route) => false,
                        );
                      },
                      child: Text(
                        "फोन नंबर संपादित करें?",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}