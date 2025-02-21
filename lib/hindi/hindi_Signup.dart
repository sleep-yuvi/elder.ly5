import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth101/widgets/inputTextWidget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth101/screens/services/firebase_auth_service.dart';
import 'package:firebase_auth101/screens/homepage.dart';

import 'package:firebase_auth101/hindi/hindi_login.dart';




class Hindi_SignUp extends StatefulWidget {
  Hindi_SignUp() : super();

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<Hindi_SignUp> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
      final TextEditingController _phoneController =
      TextEditingController();
      final TextEditingController _lastController =
      TextEditingController();
       bool ishiddenpasswoed = true;
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("साइन अप करें",
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
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
           
            
            color: Colors.white,
            
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          width: screenWidth,
          height: screenHeight,
          child: SingleChildScrollView(
            //controller: controller,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'आपका स्वागत है',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff000000),
                      
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  InputTextWidget(
                                    controller: _usernameController,

                      labelText: " नाम",
                      icon: Icons.person,
                      obscureText: false,
                      keyboardType: TextInputType.text),
                  SizedBox(
                    height: 12.0,
                  ),
                  InputTextWidget(
                     controller: _lastController,
                      labelText: "उपनाम",
                      icon: Icons.person,
                      obscureText: false,
                      keyboardType: TextInputType.text),
                  SizedBox(
                    height: 12.0,
                  ),
                  InputTextWidget(
                      controller: _emailController,
                      labelText: "वैध ईमेल आईडी",
                      icon: Icons.email,
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress),
                  SizedBox(
                    height: 12.0,
                  ),
                  InputTextWidget(
                    controller: _phoneController,
                      labelText: "फोन नंबर",
                      icon: Icons.phone,
                      obscureText: false,
                      keyboardType: TextInputType.number),
                  SizedBox(
                    height: 12.0,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                    child: Container(
                      child: Material(
                        elevation: 15.0,
                        shadowColor: Colors.black,
                        borderRadius: BorderRadius.circular(15.0),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 20.0, left: 15.0),
                          child: TextFormField(
                              obscureText: ishiddenpasswoed,
                              autofocus: false,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                  size: 32.0, /*Color(0xff224597)*/
                                ),
                                labelText: "पासवर्ड (मिनट 6 अक्षर)",
                                labelStyle: TextStyle(
                                    color: Colors.black54, fontSize: 18.0),
                                hintText: '',
                                enabledBorder: InputBorder.none,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black54),
                                ),
                                border: InputBorder.none,
                                suffixIcon:IconButton(onPressed: (){ishiddenpasswoed = !ishiddenpasswoed;
                  setState(() {
                  
                  });
                  }, 
                  icon: Icon(ishiddenpasswoed? Icons.visibility:Icons.visibility_off))
                              ),
                              controller: _passwordController,
                              
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Enter a Password';
                                } else if (val.length < 6) {
                                  return 'password must be > 6 characters';
                                }

                                return null;
                              }),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                 
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                    child: Container(
                      child: Material(
                        elevation: 15.0,
                        shadowColor: Colors.black,
                        borderRadius: BorderRadius.circular(15.0),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 20.0, left: 15.0),
                          child: TextFormField(
                              obscureText: ishiddenpasswoed,
                              autofocus: false,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                  size: 32.0, /*Color(0xff224597)*/
                                ),
                                labelText: "पासवर्ड सुनिश्चित करें",
                                labelStyle: TextStyle(
                                    color: Colors.black54, fontSize: 18.0),
                                hintText: '',
                                enabledBorder: InputBorder.none,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black54),
                                ),
                                border: InputBorder.none,
                                suffixIcon:IconButton(onPressed: (){ishiddenpasswoed = !ishiddenpasswoed;
                  setState(() {
                  
                  });
                  }, 
                  icon: Icon(ishiddenpasswoed? Icons.visibility:Icons.visibility_off))
                              ),
                              controller: _confirmPasswordController,
                              validator: (val) {
                                if (val!.isEmpty)
                                  return 'Confirm Password!!';
                                if (val != _passwordController.text)
                                  return 'पासवर्ड गलत है';
                                return null;
                              }),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    height: 55.0,
                    child: ElevatedButton(
                      onPressed: () async {
                  try {
                    await FirebaseAuthService().signup(
                        _emailController.text.trim(),
                        _passwordController.text.trim());


                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  Hindi_Login()));
                  } on FirebaseException catch (e) {
                    debugPrint(e.message);
                  }
                },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 0.0,
                        minimumSize: Size(screenWidth, 150),
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color:Color.fromARGB(255, 0, 36, 36),
                                  offset: const Offset(1.1, 1.1),
                                  blurRadius: 10.0),
                            ],
                            color: Color.fromARGB(255, 0, 36, 36),
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "रजिस्टर करें",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
                  "पहले से ही खाता है?  ",
                  style: TextStyle(
                      color: Colors.grey[600], fontWeight: FontWeight.bold),
                ),
                Material(
                    child: InkWell(
                  onTap: () {
                        Navigator.push(
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
    );
  }
}
