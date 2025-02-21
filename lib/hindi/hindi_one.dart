import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth101/hindi/hindi_otp.dart';
class MyPhoneHindi extends StatefulWidget {
  const MyPhoneHindi({Key? key}) : super(key: key);
  static String verify="";

  @override
  State<MyPhoneHindi> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhoneHindi> {
 TextEditingController countryController = TextEditingController();
var phone="";

  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Image.asset(
                'assets/img2.png',
                width: 150,
                height: 150,
              ),
              SizedBox(
                height: 25,
              ),
              Text('मोबाइल सत्यापन',style: TextStyle(fontSize: 22,  fontFamily: 'Joti One', fontWeight: FontWeight.bold),),
              Text('शुरू करने से पहले आपको अपना मोबाइल नंबर रजिस्टर करना होगा।',style: TextStyle(
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
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countryController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Text(
                      "|",
                      style: TextStyle(fontSize: 33, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                          onChanged: (value) {
                            phone=value;
                          },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "फ़ोन नंबर दर्ज करें",
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
                    onPressed: () async {
                      await FirebaseAuth.instance.verifyPhoneNumber(
  phoneNumber: '${countryController.text+phone}',
  verificationCompleted: (PhoneAuthCredential credential) {},
  verificationFailed: (FirebaseAuthException e) {},
  codeSent: (String verificationId, int? resendToken) {
    MyPhoneHindi.verify=verificationId;
      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const MyOtpHindi()));},
  codeAutoRetrievalTimeout: (String verificationId) {},
);
                     // Navigator.pushNamed(context, "otp");
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
                        "कोड भेजें",
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
      )
    );
  }
}