import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
        SingleChildScrollView(
          child: Column(

            children: [
              
           // Padding(
           //   padding: const EdgeInsets.only(top:100,),
           //   child: Image.asset("lib/images/logo2.jpg"),
           // ),
              Padding(
                padding: const EdgeInsets.only(top:140),
                child: Container(

                    child: Lottie.asset("lib/images/delievery.json", )),
              ),
              const SizedBox(
                height:30,
              ),
              const Text("Order Your Food Now !",style:TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
                fontStyle:FontStyle.italic,

              )),
              const SizedBox(
                height:20,
              ),
              Padding(
                padding: const EdgeInsets.only (left:20,),
                child: Text("Have your favourite dishes cuisines at your door within minutes!",
                    style:TextStyle(
                      wordSpacing: 3,
                      color:Colors.grey.shade700,
                      fontStyle:FontStyle.italic,
                      fontSize: 21,

                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top:80,bottom:50),
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/SignUp');

                  },

                  child: Container(
                    height: 60,
                    width: 250,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(27)),

                    ),
                    child:const Row(
                      children: [
                        SizedBox(width:50),
                        Text("Get Started",style:TextStyle(
                            color:Colors.white,
                           fontSize:22,
                          fontWeight: FontWeight.bold,
                        ),),
                        Icon(Icons.chevron_right,color: Colors.white,size: 50,),
                      ],
                    )
                  ),
                ),
              ),
  ],
          ),
        ),

    );
  }
}
