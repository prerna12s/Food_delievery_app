
import 'package:food_delieveryapp_prerna/home.dart';
import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:food_delieveryapp_prerna/Models/UserModel.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delieveryapp_prerna/home.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void checkValues(){
    String email =emailController.text.trim();
    String password =passwordController.text.trim();
    String username =usernameController.text.trim();

    if(email == "" || password ==" "|| username ==" "){
      print("Please fill all the fields!");
    }
    else{
      signup(username,email,password);
    }
  }
  void signup(String username,String email,String password) async {
     UserCredential?credential;
     
    try{
    credential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseException catch(ex){
      print(ex.code.toString());
    }

    if(credential!=null){
      String uid= credential.user!.uid;
      UserModel newUser = UserModel(

        uid:uid,
        email:email,
        username: username,
        password: password,
        profilepic: " "

      );
      await FirebaseFirestore.instance.collection("users").doc(uid).set(newUser.toMap()).then((value){
        print("New User Created!");
        Navigator.push(
          context,MaterialPageRoute(builder: (context){
            return Home();
        }
        ),
        );
      });

    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.deepOrangeAccent ,
        body: SizedBox(
            height:double.infinity,
            width:double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children:[
                  Lottie.asset('lib/images/loginimg.json'),
                  const SizedBox(
                    height:15,
                  ),
                  const Text("Create  Account ",style:TextStyle(
                    color:Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),),
                  Padding(
                    padding:  const EdgeInsets.only(top:40,right:8,left:8,bottom:8),
                    child: TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled:true,
                          hintText: 'Username',
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26)
                          )
                      ),
                    ),
                  ),

                  Padding(
                    padding:  const EdgeInsets.only(top:10,right:8,left:8),
                    child: TextField(
                      controller: emailController,
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
                    padding:  const EdgeInsets.only(top:10,right:8,left:8),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
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
                        child: CupertinoButton(
                          onPressed: (){
                            Navigator.pushNamed(context,"/login");
                          },
                          child:
                              const Text("Already have an account?click here",style:TextStyle(
                                color:Colors.black,
                                fontSize: 17,
                                fontStyle:FontStyle.italic,
                                fontWeight:FontWeight.bold,


                              )),
                        )),
                           ]
                          ),
                          CupertinoButton(
                            onPressed: (){
                          //Navigator.pushNamed(context,"/home");
                              checkValues();
                            },
                          child: Container(
                          height:50,
                          width:120,

                          decoration: BoxDecoration(
                           color: Colors.red.shade700,
                            borderRadius: BorderRadius.circular(26),
                          ),
                          child:const Center(
                          child: Text("SignUp",style:TextStyle(

                          color:Colors.white,
                         fontSize: 24,
                           fontWeight:FontWeight.bold,
                         )
                        ),
                         ),
                          ),),

              ],
                        ),
            ),
                    ),



              );


  }}

