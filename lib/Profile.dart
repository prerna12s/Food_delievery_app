import 'package:flutter/material.dart';
import 'package:food_delieveryapp_prerna/Profile.dart';
import 'package:food_delieveryapp_prerna/DetailPage.dart';
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(" Profile",style:TextStyle(
                      color:Colors.black,
                      fontSize:27,
                    )),
                  IconButton
                    (onPressed:(){},
                      icon: Icon(Icons.shopping_cart)),
                  ],

                ),

                Row(

                  children:[
                    Container(
                    padding: EdgeInsets.only(left:100,top:18,bottom: 8,),
                    height:60,
                    margin: EdgeInsets.only(left:20,top:30,),
                    width:MediaQuery.of(context).size.width/1.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      color:Colors.white,
                      boxShadow:[
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius:2 ,
                          color: Colors.orangeAccent,
                        )
                      ]
                    ),

                    child:

                      Text("MY ORDERS",style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),),

                    )


            ],
                )
              ],
            ),
          ),
        ),
      )

    );
  }
}
