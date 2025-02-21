import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_auth101/screens/first_screen.dart';
import 'package:firebase_auth101/pages/trial.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const PageViewDemo()));
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 36, 36),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/launcher.png', height: 250,),
            const SizedBox(height: 30,),
            if(defaultTargetPlatform == TargetPlatform.iOS)
            const CupertinoActivityIndicator(
              color: Colors.white,
              radius: 20,
            )
            else
            const CircularProgressIndicator(
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

