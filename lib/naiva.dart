import 'package:firebase_auth101/screens/about.dart';
import 'package:firebase_auth101/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context){
    final controller =Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height:80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: Color.fromARGB(255, 0, 36, 36),
          destinations: [
            NavigationDestination(icon: Icon(Icons.home_sharp,color: Colors.white,), label:'Home',),
                      NavigationDestination(icon: Icon(Icons.help,color: Colors.white,), label: 'About'),
                                NavigationDestination(icon: Icon(Icons.account_circle,color: Colors.white,), label: 'Profile'),
      
      
          ],
        ),
      ), 
      body:Obx(() => controller.Screens[controller.selectedIndex.value]),

    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final Screens =[ HOME1(), third(), Container()];
  }