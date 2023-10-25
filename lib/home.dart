import'package:flutter/material.dart';
import'package:food_delieveryapp_prerna/home.dart';
import 'package:food_delieveryapp_prerna/splash.dart';
import 'package:food_delieveryapp_prerna/Profile.dart';
import 'package:food_delieveryapp_prerna/DetailPage.dart';


class Home extends StatelessWidget {

  List foods=[
    "Pizza",
    "Burger",
    "Snacks",
    "Water",
  ];
  List foods2=[
    "Chowmein",
    "Cheese Burger",
    "Cheese Pizza",


  ];
  List<Color>bgColors=[
    Color(0xFFFBDCDA),
    Color(0xFFD4EEF3),
    Color(0xFFFAE6D5),
    Color(0xFFEFCFE7),
  ];

  @override
  Widget build(BuildContext context) {
    return  Material(
      color:Colors.white,
      child:SingleChildScrollView(
        child:Column(
          children:[
            SizedBox(height:35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                      Text("Deliver to",style: TextStyle(
                        fontSize: 18,
                        color:Colors.black54,
                      ),),
                      SizedBox(
                        height:5,
                      ),
                      Row(
                        children: [
                          Icon(
                              Icons.location_on_outlined,
                            color:Colors.red,
                          ),
                          Text(
                              "Ghaziabad,India",
                              style:TextStyle(
                                fontSize:20,
                                fontWeight:FontWeight.bold,
                              )
                          ),
                          Icon(Icons.arrow_drop_down,color:Colors.red,
                          )
                        ],

                      ),
                ],
                    ),

                   InkWell(
                     onTap: (){
                       Navigator.pushNamed(context, '/Profile');
                     },
                     child: CircleAvatar(
                       child:Image.asset("lib/images/GIRL.jpeg",fit:BoxFit.cover),
                     ),
                   )
                   ],
              ),
            ),
            //Search Bar
             Row(
               children: [
                 Container(
                   margin: EdgeInsets.only(top:10,bottom:2,left:10,right:10),

                   height:45,
                   width: MediaQuery.of(context).size.width/1.2,
                   decoration: BoxDecoration(
                     color:Colors.grey,
                     borderRadius: BorderRadius.circular(22),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(left:3,right:400),

                         child: IconButton(onPressed: (){},
                             icon: Icon(Icons.search,size:27,color:Colors.redAccent)),


                   ),
                     ),

                   Icon(Icons.sort,size:39,color:Colors.deepOrange)

               ],
             ),
              //banner
              Container(
                height: 180,
                width:MediaQuery.of(context).size.width,

                child:Image.asset("lib/images/banner.jpg") ,
              ),

            Padding(padding: EdgeInsets.symmetric(horizontal:15,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,

                  ),),
                  TextButton(
                    onPressed: (){},
                    child:Text("See All",style:TextStyle(
                      color: Colors.orange,
                      fontSize: 17,
                    )) ,
                  ),


                ],
              ),),

             // list 1
              SizedBox(
                height:120,
                child:ListView .builder(
                  scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: foods.length,
                    itemBuilder:(context, index){
                  return Container(
                    width:100,
                    margin: EdgeInsets.only(left:15),
                    padding:EdgeInsets.symmetric(vertical:5),
                    decoration: BoxDecoration(
                      color: bgColors[index],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                      children: [
                        Image.asset("lib/images/${foods[index]}.png",
                        height:80,
                        width: 80,),
                        Text(
                          foods[index],
                          style:  TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color:Colors.black54,
                          ),
                        ),

                      ],
                    ),


                  );
                }
                )
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal:15,vertical:5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,

                  ),),
                  TextButton(
                    onPressed: (){},
                    child:Text("See All",style:TextStyle(
                      color: Colors.orange,
                      fontSize: 17,
                    )) ,
                  ),


                ],
              ),),
           SizedBox(
               height: 220,
               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 shrinkWrap: true,
                 itemCount: foods2.length,

                 itemBuilder:(context, index){
                 return InkWell(
                 onTap: (){
                   Navigator.pushNamed(context, '/Detail');
                 },
              child: Container(
               width: MediaQuery.of(context).size.width/1.4,
               margin:EdgeInsets.only(left:15,top:5,bottom:5,right:5),
               decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
    color:Colors.white,
    boxShadow: [
      BoxShadow(
        color:Colors.black12,
       blurRadius:4,
       spreadRadius: 2),
    ],
               ),child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset('lib/images/${foods2[index]}.jpg',height: 120,
                          width:MediaQuery.of(context) .size.width/1.4,
                      fit: BoxFit.cover,),

                    ),

                  Padding(
                    padding: EdgeInsets.only(left:8),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              foods2[index],
                              style: TextStyle(
                                fontSize: 18
                              ),

                            ),
                            SizedBox(
                              height:5,
                            ),
                            Text(
                              "Fast Food",
                              style: TextStyle(
                                fontSize:16,
                                color:Colors.black45,
                              ),

                            ),
                            Row(
                              children:[
                                Icon(Icons.star,
                                color:Color(0xFFFF2F08),
                                size:20,),
                                SizedBox(
                                  width:2,
                                ),
                                Text("4.7",style:TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                                SizedBox(
                                  width:5,
                                ),
                                Text("999 Ratings",style:TextStyle(
                                  color:Colors.black45,
                                ))
                              ]


                            )
                          ],
                        )
                      ],

                    )


                  )
                ],
              ),

    ),
                 );
           }
               ),),

          ],
        ),
            ),



    );
  }
}

