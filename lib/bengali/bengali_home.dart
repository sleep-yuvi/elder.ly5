import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth101/screens/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth101/bengali/bengali_login.dart';

class bengaliHomeScreen extends StatefulWidget {
  const bengaliHomeScreen({Key? key}) : super(key: key);

  @override
  State<bengaliHomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<bengaliHomeScreen> {
  final String? userName = FirebaseAuth.instance.currentUser?.displayName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" হোমপেজ"),
      ),
      body: Column(
        children: [
          Text("স্বাগতম $userName"),
          ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                if (!mounted) return;
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  bengaliLogin();
                }));
              },
              child: const Text("লগ আউট করুন"))
        ],
      ),
    );
  }
}
