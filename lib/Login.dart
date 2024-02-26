import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delieveryapp_prerna/Models/UserModel.dart';
import 'package:lottie/lottie.dart';
import 'package:food_delieveryapp_prerna/Models/UserModel.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

 class _LoginPageState extends State<LoginPage> {
   TextEditingController usernameController = TextEditingController();
   TextEditingController emailController = TextEditingController();
   TextEditingController passwordController = TextEditingController();

   void checkValues() {
     String email = emailController.text.trim();
     String password = passwordController.text.trim();
     if (email == "" || password == "") {
       print("Please FILL ALL THE fields!");
     }
     else {
       logIn(email, password);
     }
   }

   void logIn(String email, String password) async {
     UserCredential?credential;

     try {
       credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
           email: email, password: password);
     } on FirebaseException catch (ex) {
       print(ex.code.toString());
     }

     if (credential != null) {
       String uid = credential.user!.uid;
       DocumentSnapshot userData = await FirebaseFirestore.instance.collection(
           "users").doc(uid).get();
       UserModel userModel = UserModel.fromMap(
           userData.data() as Map<String, dynamic>);
       //Go to HOME page
       Navigator.pushNamed(context, "/home");
       print("Log in Successful");

     }
   }


   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.deepOrangeAccent,
       body: SizedBox(
         height: double.infinity,
         width: double.infinity,
         child: SingleChildScrollView(
           child: Column(
             children: [
               Lottie.asset('lib/images/loginimg.json'),
               const SizedBox(
                 height: 15,
               ),
               const Text("Login", style: TextStyle(
                 color: Colors.white,
                 fontSize: 33,
                 fontWeight: FontWeight.bold,
                 letterSpacing: 3,
               )),

               SizedBox(
                 height:20,
               ),
               SizedBox(
                 width: MediaQuery
                     .of(context)
                     .size
                     .width / 1.05,
                 child: TextFormField(
                   decoration: InputDecoration(
                       fillColor: Colors.white,
                       filled: true,

                       hintText: 'Email',
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(29)
                       )
                   ),
                 ),
               ),


               Padding(
                 padding: const EdgeInsets.only(top: 10, right: 8, left: 8),
                 child: TextFormField(
                   decoration: InputDecoration(
                       fillColor: Colors.white,
                       filled: true,
                       hintText: 'Password',
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(2)
                       )
                   ),
                 ),
               ),

               Row(
                 children: [

                   Padding(
                     padding: const EdgeInsets.only(
                         top: 2, left: 16, bottom: 50),
                     child: TextButton(
                       onPressed: () {
                         Navigator.pushNamed(context, "/SignUp");
                       },
                       child: const Text("Sign Up", style: TextStyle(
                         color: Colors.white,
                         fontSize: 20,
                         fontStyle: FontStyle.italic
                         ,

                       )),
                     ),
                   ),

                 ],
               ),
               InkWell(
                   onTap: () {
                     //Navigator.pop(context);
                     checkValues();

                   },
                   child: Container(
                     height: 50,
                     width: 120,

                     decoration: BoxDecoration(
                       color: Colors.red.shade700,
                       borderRadius: BorderRadius.circular(26),
                     ),
                     child: const Center(
                       child: Text("Login", style: TextStyle(

                         color: Colors.white,
                         fontSize: 24,
                         fontWeight: FontWeight.bold,
                       )
                       ),
                     ),

                   )
               ),

             ],

           ),
         ),
       ),


     );
   }


 }