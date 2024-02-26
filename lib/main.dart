import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delieveryapp_prerna/Login.dart';
import 'package:food_delieveryapp_prerna/firebase_options.dart';
import'package:food_delieveryapp_prerna/home.dart';
import 'package:food_delieveryapp_prerna/splash.dart';
import 'package:food_delieveryapp_prerna/SignUp.dart';
import 'package:food_delieveryapp_prerna/Profile.dart';
import 'package:food_delieveryapp_prerna/DetailPage.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp( MaterialApp(
    title:"FOOD DELEIEVRY APP",
    debugShowCheckedModeBanner: false,
    routes: {
  "/" :(context) => const Splash(),
      "/home" :(context) => Home(),
      "/login" :(context) => const LoginPage(),
      "/SignUp":(context)=>const SignUp(),
      "/Profile":(context)=>const Profile(),
      "/Detail":(context)=>const Detail(),

  } ));
}

