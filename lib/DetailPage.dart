import 'package:flutter/material.dart';
import 'package:food_delieveryapp_prerna/Profile.dart';
import 'package:food_delieveryapp_prerna/DetailPage.dart';
class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        ),
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children:[
              Icon(Icons.bookmark,color:Colors.red,size:35),

              Padding(
                padding: const EdgeInsets.only(left:250,),
                child: Icon(Icons.favorite_outline_rounded,color:Colors.red,size:37),
              ),

              SizedBox(
                width:10,
              ),
              IconButton(onPressed: (){},
                  icon: Icon(Icons.shopping_cart,color:Colors.red,size:35)),
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
                        child: Icon(Icons.add,color:Colors.white,size: 26,)),
                    SizedBox(width:3),
                    Text('Quantity',style: TextStyle(
                      fontSize: 20,
                    ),),
                    SizedBox(width:3),
                    CircleAvatar(
                        backgroundColor:Colors.green,
                        child: Icon(Icons.horizontal_rule_outlined,color:Colors.white,size:24)),
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
             )





      );






  }
}


