import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import'package:food_delieveryapp_prerna/home.dart';
import 'package:food_delieveryapp_prerna/splash.dart';
import 'package:food_delieveryapp_prerna/SignUp.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.deepOrangeAccent ,
      body: Container(
          height:double.infinity,
          width:double.infinity,
          child: Column(
            children:[
              Lottie.asset('lib/images/loginimg.json'),
              SizedBox(
                height:15,
              ),
              Text("Login",style:TextStyle(
                color:Colors.white,
                fontSize: 33,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),),
             Padding(
               padding:  EdgeInsets.only(top:40,right:8,left:8,bottom:8),
               child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled:true,
                      hintText: 'Email',
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26)
                      )
                    ),
                  ),
             ),

              Padding(
                padding:  EdgeInsets.only(top:10,right:8,left:8),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled:true,
                      hintText: 'Password',
                      border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(26)
                      )
                  ),
                ),
              ),

              Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top:2,left:16,bottom:50),
                    child: TextButton(
                       onPressed: (){
                        Navigator.pushNamed(context,"/SignUp");
                       },
                       child: Text("Sign Up",style:TextStyle(
                         color:Colors.white,
                         fontSize: 20,
                         fontStyle:FontStyle.italic
                         ,

                       )),
                     ),
                  ),

                ],
              ),
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context,"/home");
                  },
                  child: Container(
                    height:50,
                      width:120,

                      decoration: BoxDecoration(
                        color: Colors.red.shade700,
                        borderRadius: BorderRadius.circular(26),
                      ),
                     child:Center(
                       child: Text("Login",style:TextStyle(

                         color:Colors.white,
                         fontSize: 24,
                         fontWeight:FontWeight.bold,
                       )
                       ),
                     ),

                  )
              ),

            ],

          ),
        ),


    );


  }
}


