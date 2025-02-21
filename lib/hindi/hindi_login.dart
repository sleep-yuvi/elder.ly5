import 'package:firebase_auth101/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth101/widgets/inputTextWidget.dart';
import 'package:firebase_auth101/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth101/screens/services/firebase_auth_service.dart';
import 'package:firebase_auth101/controllers/user_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth101/hindi/hindi_Signup.dart';
import 'package:firebase_auth101/hindi/hindi_forgot.dart';
import 'package:firebase_auth101/hindi/hindi_one.dart';
import 'package:firebase_auth101/hindi/hindi_home.dart';
import 'package:firebase_auth101/screens/homepage.dart';
import 'package:firebase_auth101/naiva.dart';



class Hindi_Login extends StatefulWidget {
  Hindi_Login() : super();

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<Hindi_Login> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
 bool ishiddenpasswoed = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final double r = (175 / 360); //  rapport for web test(304 / 540);
    final coverHeight = screenWidth * r;
    bool _pinned = false;
    bool _snap = false;
    bool _floating = false;

    final widgetList = [
      Row(
        children: [
          SizedBox(
            width: 28,
          ),
          Text(
            'आपका स्वागत है',
            style: TextStyle(
              fontFamily: 'Joti One',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: const Color(0xff000000),
              
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
      SizedBox(
        height: 12.0,
      ),
      Form(
          key: _formKey,
          child: Column(
            children: [
              InputTextWidget(
                  controller: _emailController,
                  labelText: "कृपया अपना ईमेल दर्ज करें",
                  icon: Icons.email,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress),
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
            padding: const EdgeInsets.only(right: 20.0, left: 15.0),
            child: TextFormField(
                controller: _passwordController,
                obscureText: ishiddenpasswoed,
                autofocus: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  icon: Icon(
                     Icons.lock,
                    color: Colors.black,
                    size: 32.0, /*Color(0xff224597)*/
                  ),
                  labelText: "कृपया अपना पासवर्ड भरें",
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 18.0),
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
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'The required field is empty';
                  }
                }
    
                ),
          ),
        ),
      ),
    ),
                 
                  
              Padding(
                padding: const EdgeInsets.only(right: 25.0, top: 10.0),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: ()  {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPassword_hindi()));},
                        child: Text(
                          "पासवर्ड भूल गए है?",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700]),
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 55.0,
                child: ElevatedButton(
                  onPressed: () async {
                  try {
                    await FirebaseAuthService().login(
                        _emailController.text.trim(),
                        _passwordController.text.trim());
                    if (FirebaseAuth.instance.currentUser != null) {
                      if (!mounted) return;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NavigationMenu()));
                    }
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
                                ]
                                )
                                );
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
                              color: Color.fromARGB(255, 0, 36, 36),
                              offset: const Offset(1.1, 1.1),
                              blurRadius: 10.0),
                        ],
                        color: Color.fromARGB(255, 0, 36, 36), // Color(0xffF05945),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "या साइन इन करें",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
      SizedBox(
        height: 15.0,
      ),
      Wrap(
        children: [
       Padding(
                padding: const EdgeInsets.all(35.0),
                child: Row(
                  children: [
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.height * 0.12,
                      color: Colors.grey,
                    ),
                    const Text("या उसके साथ लॉगिन",style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.height * 0.12,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            FontAwesomeIcons.phone,
                            color: Color.fromARGB(255, 0, 36, 36),
                          ),
                          onPressed: () {
                            Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const MyPhoneHindi()));
                          },
                        )),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.google,
                           color: Color.fromARGB(255, 0, 36, 36),
                        ),
                          onPressed: ()async {
                  try {
                    final user = await UserController.loginWithGoogle();
                    if (user != null && mounted) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => NavigationMenu()));
                    }
                  } on FirebaseAuthException catch (error) {
                    print(error.message);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                      error.message ?? "Something went wrong",
                    )));
                  } catch (error) {
                    print(error);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                      error.toString(),
                    )));
                  }
                },
                      
                      ),
                    ),
                    Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            FontAwesomeIcons.user,
                            color:Color.fromARGB(255, 0, 36, 36),
                          ),
                          onPressed: () {
                       
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => NavigationMenu()));
                       
                      },
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 140,
              ),
        ],
      ),
      SizedBox(
        height: 15.0,
      ),
    ];
    return Scaffold(
       extendBodyBehindAppBar: true,
     
      
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: coverHeight - 25, //304,
            backgroundColor: Color(0xFFdccdb4),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background:
                  Image.asset("assets/output-onlinepngtools-1.png", fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                     
                      ),
                  gradient: LinearGradient(
                      colors: <Color>[Color(0xFFdccdb4), Color(0xFFd8c3ab)])
                  
                  ),
              width: screenWidth,
              height: 25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: screenWidth,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(30.0),
                        topRight: const Radius.circular(30.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            return widgetList[index];
          }, childCount: widgetList.length))
        ],
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
                  "खाता नहीं है?  ",
                  style: TextStyle(
                      color: Colors.grey[600], fontWeight: FontWeight.bold),
                ),
                Material(
                    child: InkWell(
                  onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>  Hindi_SignUp()));
                      },
                  child: Text(
                    "साइन अप करें",
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
