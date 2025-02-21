import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth101/hindi/hindi_login.dart';


class hindiHomeScreen extends StatefulWidget {
  const hindiHomeScreen({Key? key}) : super(key: key);

  @override
  State<hindiHomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<hindiHomeScreen> {
  final String? userName = FirebaseAuth.instance.currentUser?.displayName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" मुखपृष्ठ"),
      ),
      body: Column(
        children: [
          Text("स्वागत है $userName"),
          ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                if (!mounted) return;
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  Hindi_Login();
                }));
              },
              child: const Text("हस्ताक्षर"))
        ],
      ),
    );
  }
}
