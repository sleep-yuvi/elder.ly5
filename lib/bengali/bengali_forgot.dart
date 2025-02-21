import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth101/bengali/bengali_signup.dart';
import 'package:firebase_auth101/bengali/bengali_login.dart';

class bengaliForgotPassword extends StatefulWidget {
  const bengaliForgotPassword({Key? key}) : super(key: key);

  @override
  State<bengaliForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<bengaliForgotPassword> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("পাসওয়ার্ড ভুলে গেছেন",
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
              Text('পাসওয়ার্ড ভুলে গেছেন?',style: TextStyle(fontSize: 22,  fontFamily: 'Joti One', fontWeight: FontWeight.bold),),
              Text('আমাদের সবার সাথেই এরম হয়ে থাকে। আমরা আপনাকে পাসওয়ার্ড রিসেট করার জন্য একটা লিংক পাঠাবো। ',style: TextStyle(
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
                        labelText: "আপনার ইমেইল আইড লিখুন",
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
                                    " পাসওয়ার্ড রিসেট ইমেইল পাঠানো হয়েছে"),
                                actions: [
                                  ElevatedButton(
                                    child: const Text("লগইন স্ক্রিনে ফিরে যান"),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                   bengaliLogin()));
                                    },
                                  )
                                ]));
                                }on FirebaseException catch (e) {
                    debugPrint("error is ${e.message}");
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                                title: const Text(
                                    "  আপনার দেওয়া ইউসার আইডি বা পাসওয়ার্ডটি ভুল। দয়া করে আবার রেজিস্টার করুন বা সঠিক ইউসার নাম এবং পাসওয়ার্ড লিখুন"),
                                actions: [
                                  ElevatedButton(
                                    child: const Text("এখানে রেজিস্টার করুন"),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                   bengaliSignUp()));
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
                        "লিংক পাঠান",
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
                  "পাসওয়ার্ড মনে আছে? ",
                  style: TextStyle(
                      color: Colors.grey[600], fontWeight: FontWeight.bold),
                ),
                Material(
                    child: InkWell(
                  onTap: () { Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>  bengaliLogin()));
                                },
                  child: Text(
                    "লগইন করুন",
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
