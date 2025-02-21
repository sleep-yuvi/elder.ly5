import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth101/widgets/customized_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth101/pages/android_login.dart';
import 'package:firebase_auth101/pages/android_signup.dart';
import 'package:firebase_auth101/widgets/customized_textfield.dart';
import 'package:firebase_auth101/screens/homepage.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password",
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
        leading:  IconButton(icon: Icon(Icons.arrow_back),
          onPressed:() {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=>  Login()),
            );
          },
          
        ),
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
              Text('Forgot Password?',style: TextStyle(fontSize: 22,  fontFamily: 'Joti One', fontWeight: FontWeight.bold),),
              Text('Dont worry it occurs to us all. We will send you a link to reset your password.',style: TextStyle(
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
                        labelText: "Enter your email",
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
                                    " Password Reset Email Sent"),
                                actions: [
                                  ElevatedButton(
                                    child: const Text("Go back to the Login Screen"),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                   Login()));
                                    },
                                  )
                                ]));
                                }on FirebaseException catch (e) {
                    debugPrint("error is ${e.message}");
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                                title: const Text(
                                    " Invalid Username or password. Please register again or make sure that username and password is correct"),
                                actions: [
                                  ElevatedButton(
                                    child: const Text("Register Now"),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                   SignUp()));
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
                        "Send The Link",
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
                  "Remember Password?  ",
                  style: TextStyle(
                      color: Colors.grey[600], fontWeight: FontWeight.bold),
                ),
                Material(
                    child: InkWell(
                  onTap: () { Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>  Login()));
                                },
                  child: Text(
                    "Login",
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
