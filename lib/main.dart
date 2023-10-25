import 'package:flutter/material.dart';
import 'package:food_delieveryapp_prerna/Login.dart';
import'package:food_delieveryapp_prerna/home.dart';
import 'package:food_delieveryapp_prerna/splash.dart';
import 'package:lottie/lottie.dart';
import 'package:food_delieveryapp_prerna/SignUp.dart';
import 'package:food_delieveryapp_prerna/Profile.dart';
import 'package:food_delieveryapp_prerna/DetailPage.dart';
void main() {
  runApp( MaterialApp(
    title:"FOOD DELEIEVRY APP",
    debugShowCheckedModeBanner: false,
    routes: {
  "/" :(context) => Splash(),
      "/home" :(context) => Home(),
      "/login" :(context) => LoginPage(),
      "/SignUp":(context)=>SignUp(),
      "/Profile":(context)=>Profile(),
      "/Detail":(context)=>Detail(),

  } ));
}

