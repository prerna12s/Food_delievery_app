import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black,
      ),
      body:Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [

                    const Text(" Profile",style:TextStyle(
                      color:Colors.black,
                      fontSize:27,
            )),
              CupertinoButton(
                onPressed: (){},
                child: CircleAvatar(
                  radius: 60,
                  child:Icon(Icons.person,size:50),
                ),
              ),
              SizedBox(
                height: 50,
              ),


              Card(
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                elevation: 2,
                child: ListTile(
                  onTap: (){},
                  leading: const Icon(Icons.shopping_bag),
                  title: const Text("My Orders",style: TextStyle(
                    fontSize:18,
                    color: Colors.black,

                  ),),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26) ),

                ),

                ),
               Card(
                shape:const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                elevation: 2,
                child: ListTile(
              onTap: (){
              },
               leading:const Icon(Icons.shopping_cart_sharp) ,
              title: const Text("My Cart",style: TextStyle(
                fontSize:18,
                color: Colors.black,),
              ),
             ),
               ),


            Card(
             elevation: 2,
            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
             child: ListTile(
             onTap: (){
            Navigator.pushNamed(context, '/');
             },
             leading: const Icon(Icons.exit_to_app),
             title: const Text("Logout"),
            ),
            ),
















                //     Row(
            //
            //       children:[
            //         Container(
            //         padding: EdgeInsets.only(left:100,top:18,bottom: 8,),
            //         height:60,
            //         margin: EdgeInsets.only(left:20,top:30,),
            //         width:MediaQuery.of(context).size.width/1.1,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(26),
            //           color:Colors.white,
            //           boxShadow:[
            //             BoxShadow(
            //               blurRadius: 5,
            //               spreadRadius:2 ,
            //               color: Colors.orangeAccent,
            //             )
            //           ]
            //         ),
            //
            //         child:
            //
            //           Text("MY ORDERS",style: TextStyle(
            //             color: Colors.black,
            //             fontSize: 22,
            //           ),),
            //
            //         )
            //
            //
            // ],
            //     )
              ],
            ),
          ),
        ),
      )

    );
  }
}
