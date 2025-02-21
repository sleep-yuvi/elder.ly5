import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth101/pages/android_login.dart';
import 'package:firebase_auth101/services_pages/medicalassistance.dart';
import 'package:firebase_auth101/services_pages/banking.dart';
import 'package:firebase_auth101/services_pages/travel.dart';
import 'package:firebase_auth101/services_pages/INTELLECTUAL.dart';
import 'package:firebase_auth101/services_pages/marketplace.dart';
import 'package:firebase_auth101/services_pages/bills.dart';
import 'package:firebase_auth101/screens/about.dart';


class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = "username";
    final email = 'username@email.com';
    final urlImage =
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 0, 36, 36),
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () {},
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  buildSearchField(),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Medical',
                    icon: Icons.medical_services_outlined,
                    onClicked: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => MEDICAL()));
                    },
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Banking',
                    icon: Icons.comment_bank_outlined,
                    onClicked: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => BANKING()));
                    },
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Travel',
                    icon: Icons.travel_explore_outlined,
                    onClicked: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Travel()));
                    },
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Intellectual',
                    icon: Icons.interests_outlined,
                    onClicked: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => INTELLECTUAL()));
                    },
                  ),
                   const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Meetings',
                    icon: Icons.delivery_dining_outlined,
                    onClicked: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Meeting()));
                    },
                  ),
                   const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Paying Bills',
                    icon: Icons.payments_outlined,
                    onClicked: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => bills()));
                    },
                  ),
                  const SizedBox(height: 24),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'About us',
                    icon: Icons.details_outlined,
                    onClicked: (){Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>  third()));},
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Log Out',
                    icon: Icons.logout_outlined,
                    onClicked: ()  {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>  Login()));},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 15,
                backgroundColor: Color.fromARGB(255, 0, 36, 36),
                child: Icon(Icons.add_comment_outlined, color: Colors.white),
              )
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

 
}