
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_app/shoe2.dart';
import 'package:shoe_app/shoeHome.dart';
 import 'package:get/get_navigation/get_navigation.dart';
// import 'package:travel_app/Travel2.dart';





void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,

    
    initialRoute: 'ShoeHome',
    routes: {   
      
      'ShoeHome' : (context) => const ShoeHome(),
      'shoe2':(context) => shoe2(),
      
      
     
     
    },
  ));
}