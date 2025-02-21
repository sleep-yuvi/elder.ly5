import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Map<String, dynamic>? _userData;

  String welcome = "Facebook";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: (){
            signInWithFacebook();
          }, child: Text(welcome))

        ],
      ),
    );
  }


  Future<UserCredential> signInWithFacebook() async {

    final LoginResult result = await FacebookAuth.instance.login(permissions:['email']);


    if (result.status == LoginStatus.success) {

      final userData = await FacebookAuth.instance.getUserData();

      _userData = userData;
    } else {
      print(result.message);
    }

    setState(() {
      welcome = _userData?['email'];
    });


    final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(result.accessToken!.token);

    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

}


