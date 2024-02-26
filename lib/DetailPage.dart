import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:food_delieveryapp_prerna/CartProvider.dart';
import 'package:provider/provider.dart';
import 'package:food_delieveryapp_prerna/home.dart';

class Detail extends StatefulWidget {
  String food;

   Detail({super.key,required this.food});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  var count=0;
  Color iconcolor=Colors.black54;
  Color iconColor=Colors.black54;
  bool iconchange=false;
  bool iconChange=false;
  void changeIconColor() {
    setState(() {
      iconcolor = iconchange?Colors.red.shade800:Colors.black54; // Change color to red
    });
  }

  void changeiconColor() {
    setState(() {
      iconColor = iconChange?Colors.red.shade800:Colors.black54; // Change color to red
    });
  }

  @override

  Widget build(BuildContext context) {
   // final cartprovider=Provider.of<CartProvider>(context);
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.deepOrangeAccent,
           title:
            Center(
              child: badges.Badge(
                 badgeAnimation: badges.BadgeAnimation.fade(toAnimate: true,animationDuration: Duration(milliseconds: 300)),
                 badgeContent: Text("0",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                 child: Padding(
                   padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/1.5),
                   child: IconButton(onPressed: (){},
                    icon: const Icon(Icons.shopping_cart,color:Colors.white,size:35)),
                 ),
               ),
            ),

        ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children:[
                IconButton(onPressed:(){
                  // changeIconColor();

                  changeiconColor();
                   iconChange =!iconChange;
                },
               icon: Icon(Icons.bookmark ,color:iconColor,size: 35,),),



          IconButton(onPressed: (){
                           changeIconColor();
                           iconchange=!iconchange;
              },

              icon:Icon(Icons.favorite,color:iconcolor,size: 37,)),
],
              ),
               const SizedBox(
                 height:10,
               ),
               const Text("Cheese Burger",style: TextStyle(
                 color: Colors.black,
                 fontSize: 33,
                 fontWeight: FontWeight.bold,

               ),),


               const Icon(Icons.star,color: Color(0xFFFF2F08),size: 20,),
            const Text("999 Ratings",style:TextStyle(
              color:Color(0xFFFF2F08),
            )),

               const SizedBox(
                 height: 10,
               ),

               Container(
               height:280,
                 width:MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(23),

                  boxShadow: const [
                    BoxShadow(
                    color:Colors.black87,
                    blurRadius:4,
                    spreadRadius: 4),
                 ],
               ),


                 child: Image.asset("lib/images/widget.food",fit:BoxFit.fitHeight),
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child: Text("widget.food",style:TextStyle(
                        fontSize: 23
                        ,
                      )),
                    ),

],),
           const SizedBox(
             height:10,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               const Column(
                 children:[
                 Text("Calories", style: TextStyle(
                     color:Colors.black54,
                     fontSize: 24
                 ),),
                 Text("120",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 19,
                 ),),
        ],
               ),

               Container(
                 height: 30,
                   width: 2,
                   color: Colors.black45,
               ),
               const Column(
                 children:[
                   Text("Calories",style: TextStyle(
                     color:Colors.black54,
                     fontSize: 24
                   ),),
                   Text("120" ,style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 19,
                   ),),
                 ],
               ),

             ],
           ),
            const SizedBox(
              height:8,
            ),
            Padding(
              padding: const EdgeInsets.only(right:100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Row(
                    children:[
                      CircleAvatar(
                        backgroundColor:Colors.green,
                          child: IconButton(
                            onPressed: (){
                              setState(() {
                                count++;
                              });
                            },
                             icon: const Icon(Icons.add,size:26),color:Colors.white,)),
                      const SizedBox(width:3),
                      const Text('Qty',style: TextStyle(
                        fontSize: 20,
                      ),),
                      Text("$count",style: const TextStyle(
                      fontSize: 20,


                      ),),
                      const SizedBox(width:3),
                      CircleAvatar(
                          backgroundColor:Colors.green,
                          child: IconButton(onPressed: (){
                            setState(() {
                              if(count>0){
                              count--;
                              }
                            });

                          },
                             icon: const Icon(Icons.horizontal_rule_outlined,size:24) ,color:Colors.white,)),
                    ],
                  ),

                  Container(
                    height: 30,
                    width: 2,
                    color: Colors.black45,
                  ),

                  const Column(
                    children:[
                      Text("Price",style: TextStyle(
                          color:Colors.black54,
                          fontSize: 21
                      ),),
                      Text("193/-",style: TextStyle(
                       fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),

                ],
              ),
            ),
           const SizedBox(
             height:24,
           ),
            InkWell(
              onTap:(){

              },
              child: Container(
                height:50,
                width:MediaQuery.of(context).size.width/1.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.red,
                ),
                child: const Center(
                  child: Text("Add to Cart",style: TextStyle(
                    fontSize: 21,
                    color:Colors.white,

                  ),),
                ),

              ),
            )


],
               ),
      )





      );






  }
}


