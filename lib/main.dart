import 'package:firebase_auth101/firebase_options.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth101/first.dart';
import 'package:firebase_auth101/screens/first_screen.dart';
import 'package:firebase_auth101/pages/android_login.dart';
import 'package:firebase_auth101/screens/getStartred.dart';
import 'package:firebase_auth101/phone/one.dart';
import 'package:firebase_auth101/phone/otp.dart';
import 'package:firebase_auth101/screens/homepage.dart';
import 'package:firebase_auth101/guide/annwesha.dart';

void main() async{
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'elder.ly',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const Splash(),
    );
   }
  
}

