import 'package:flutter/material.dart';
import 'package:food_delieveryapp_prerna/Profile.dart';
import 'package:food_delieveryapp_prerna/DetailPage.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

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
      iconcolor = iconchange?Colors.red:Colors.black54; // Change color to red
    });
  }

  void changeiconColor() {
    setState(() {
      iconColor = iconChange?Colors.redAccent:Colors.black54; // Change color to red
    });
  }

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.deepOrangeAccent,
           title:Padding(
             padding: const EdgeInsets.only(left:250,right:8),
             child: IconButton(onPressed: (){},
              icon: Icon(Icons.shopping_cart,color:Colors.black,size:35)),
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
               SizedBox(
                 height:10,
               ),
               Text("Cheese Burger",style: TextStyle(
                 color: Colors.black,
                 fontSize: 33,
                 fontWeight: FontWeight.bold,

               ),),


               Icon(Icons.star,color: Color(0xFFFF2F08),size: 20,),
            Text("999 Ratings",style:TextStyle(
              color:Color(0xFFFF2F08),
            )),

               SizedBox(
                 height: 10,
               ),

               Container(
               height:280,
                 width:MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(23),

                  boxShadow: [
                    BoxShadow(
                    color:Colors.black87,
                    blurRadius:4,
                    spreadRadius: 4),
                 ],
               ),


                 child: Image.asset("lib/images/Cheese Burger.jpg",fit:BoxFit.fitHeight),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:20),
                      child: Text("Cheese Burger",style:TextStyle(
                        fontSize: 23
                        ,
                      )),
                    ),

],),
           SizedBox(
             height:10,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Column(
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
               Column(
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
            SizedBox(
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
                             icon: Icon(Icons.add,size:26),color:Colors.white,)),
                      SizedBox(width:3),
                      Text('Qty',style: TextStyle(
                        fontSize: 20,
                      ),),
                      Text("$count",style: TextStyle(
                      fontSize: 20,


                      ),),
                      SizedBox(width:3),
                      CircleAvatar(
                          backgroundColor:Colors.green,
                          child: IconButton(onPressed: (){
                            setState(() {
                              if(count>0){
                              count--;
                              }
                            });

                          },
                             icon: Icon(Icons.horizontal_rule_outlined,size:24) ,color:Colors.white,)),
                    ],
                  ),

                  Container(
                    height: 30,
                    width: 2,
                    color: Colors.black45,
                  ),

                  Column(
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
           SizedBox(
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
                child: Center(
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


