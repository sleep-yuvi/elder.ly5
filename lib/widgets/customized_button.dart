import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  final String? buttontext;
  final Color? buttoncolor;
  final Color? textcolor;
  final VoidCallback? onPressed;
  const CustomizedButton ({Key? key, this.buttontext, this.buttoncolor, this.onPressed, this.textcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: onPressed,
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: buttoncolor,
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:  Center(child: Text(buttontext! ,style: TextStyle(color: textcolor,fontSize: 20)))
                ),
              ),
            );

  }
  
}

