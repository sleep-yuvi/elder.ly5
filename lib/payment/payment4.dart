import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:firebase_auth101/services_pages/marketplace.dart';
import 'package:firebase_auth101/guide/indrani.dart';

class PaymentPage4 extends StatefulWidget {
  const PaymentPage4({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage4> {
  Razorpay? _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay?.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay?.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay?.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay?.clear();
  }

  void openPaymentPortal() async {
    var options = {
      'key': 'rzp_test_jvtlhG67HfUkoA',
      'amount': 80000,
      'name': 'Yubaraj',
      'description': 'Payment',
      'prefill': {'contact': '6291459761', 'email': 'baruayubaraj@gmail.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay?.open(options);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: "SUCCESS PAYMENT: ${response.paymentId}", timeInSecForIosWeb: 4);
                showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                                title: const Text(
                                    " Paymnet was succesfull"),
                                actions: [
                                  ElevatedButton(
                                    child: const Text("Click Here"),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                   INDRANI()));
                                    },
                                  )
                                ]
                                )
                                );
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "ERROR HERE: ${response.code} - ${response.message}",
        timeInSecForIosWeb: 4);
                showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                                title: const Text(
                                    " Paymnet was unsuccesfull"),
                                actions: [
                                  ElevatedButton(
                                    child: const Text("Click Here"),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                   Meeting()));
                                    },
                                  )
                                ]
                                )
                                );
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET IS : ${response.walletName}",
        timeInSecForIosWeb: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(icon: Icon(Icons.arrow_back),
          onPressed:() {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=>  Meeting()),
            );
          },
          ),
          title: const Text('Payment',
            style: TextStyle(fontSize: 22.0, color: Color(0xFF545D68))),
        ),
      body: Column(children: [
        const SizedBox(height: 16.0),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  Text(
                    '\Rs800',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(' Meetings',
                      style: TextStyle(color: Colors.grey, fontSize: 24.0)),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 18.0),
        InkWell(
            onTap: () {
              openPaymentPortal();
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: Container(
                  width: MediaQuery.of(context).size.width - 60.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.blue.shade900),
                  child: Center(
                      child: Text('Pay',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.blue.shade50)))),
            ))
      ]),
    );
  }
}