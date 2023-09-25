import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
//import 'package:get/get.dart';
import 'shoe2.dart';

class ShoeHome extends StatefulWidget {
  const ShoeHome({super.key});

  @override
  State<ShoeHome> createState() => _ShoeHomeState();
}

class _ShoeHomeState extends State<ShoeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/shoebackground.jpeg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.2),
            colorBlendMode: BlendMode.darken,
            )
            ),

            ListView(padding: EdgeInsets.symmetric(horizontal: 30),
            children: [
              SizedBox(height: 100,), 
              Center(child: Text('Density',style: TextStyle(color: Colors.deepPurple,fontSize: 70,fontWeight: FontWeight.w600,fontFamily: 'Carter'),)),
              Divider(color: Colors.pinkAccent,),
              SizedBox(height: 120,),
              Text('between saying & doingmany pair of shoe are worn',textAlign: TextAlign.center,style: TextStyle(color: Color.fromARGB(255, 89, 70, 70),fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'Carter'),),
              SizedBox(height: 180,),


              InkWell(
                onTap: () {
                  Get.to(()=>shoe2());
                },

                child: Container(margin: EdgeInsets.symmetric(horizontal: 30),
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 1),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white.withOpacity(0.8),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('have a look',style: TextStyle(color: Colors.black,fontFamily: 'Carter',fontSize: 30,fontWeight: FontWeight.w500),),
                  SizedBox(width: 20,),
                  Icon(FontAwesomeIcons.shoePrints,color: Colors.amber,),
                 
                ],
                
                ),
                ),
                
                 ),
                 SizedBox(height: 20,),
                 Center(child: Text('we have right pair for you',style: TextStyle(color: Colors.black.withOpacity(0.7),fontFamily: 'Carter',fontSize: 18,fontWeight: FontWeight.w500),)),
                 SizedBox(height: 50,),
            ],

            )
        ],
      ),
    );
  }
}