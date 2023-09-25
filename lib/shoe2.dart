import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shoe_app/shoe3.dart';


class shoe2 extends StatefulWidget {
  const shoe2({super.key});

  @override
  State<shoe2> createState() => _shoe2State();
}

class _shoe2State extends State<shoe2> {

  List topics =['ALL',' For Men','For Woman','For Kids'];
  var topicchosen = 'ALL';
  List shoes =['assets/images/shoe1.png','assets/images/shoe2.png','assets/images/shoe3.png','assets/images/shoe4.png','assets/images/black.png'];
  List name =['All max','Pastero','Nike Air','Velvet','Bloomer'];
  List desc =['floting air','disco bar blue','presses like pop','comfort cushion','rocky hard'];
  List price =['₹2999','₹1999','₹1599','₹3299','₹4999'];


 List<List<Color>> colors =[
    [Colors.pink.withOpacity(0.2),Colors.white.withOpacity(1)],
    [Colors.purple.withOpacity(0.2),Colors.white.withOpacity(1)],
    [Colors.orange.withOpacity(0.2),Colors.white.withOpacity(1)],
    [Colors.red.withOpacity(0.2),Colors.white.withOpacity(1)],
    [Colors.black.withOpacity(0.2),Colors.white.withOpacity(1)],
      
 ];







  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
    appBar: AppBar(backgroundColor: Colors.white,elevation: 0,toolbarHeight: 80,
    leading:IconButton(onPressed: (){
      Navigator.pushNamed(context, 'ShoeHome');
    }, icon: Icon(Icons.arrow_back,color: Colors.black.withOpacity(0.8),)),
    title: Icon(Icons.eco,color: Colors.black,size: 40,),
    centerTitle: true,
    actions: [
      Icon(Icons.shopping_cart,color: Colors.black.withOpacity(0.8),size: 30,),
      SizedBox(width: 20,),

    ],
    
    ),

    body: ListView( 
      padding: EdgeInsets.only(left: 20),
    physics: BouncingScrollPhysics(),

    children: [
      SizedBox(height: 10,),
      Text('Beleave you can \n Make Impact',style: TextStyle(color: Colors.purpleAccent,fontFamily: 'Carter',fontSize: 30),),
      SizedBox(height: 15,),

      Container(
        
        height: 40,
        child: ListView.builder(
          shrinkWrap:true,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: topics.length,
          itemBuilder:(context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    topicchosen =topics[index];
                  });},

                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                    decoration: BoxDecoration(
                      color: topicchosen ==topics[index]? Colors.purple.withOpacity(0.7): Colors.purpleAccent.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Text(topics[index],style: TextStyle(color: topicchosen == topics[index]? Colors.white:Colors.white.withOpacity(0.7), fontFamily: 'Carter',fontSize: 20),),
                  ),
              ),
            );
            
          }, 
        ),
      ),


    SizedBox(height: 20,),
    ListView.builder(
      shrinkWrap: true,
      itemCount: shoes.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Get.to(()=>shoe3({
              'title':name[index],
              'desc' :desc[index],
              'price': price[index],
              'image': shoes[index],

          }),);
          },

          child: Stack(
            children: [
              Row(
                children: [
                  Expanded(flex: 25,child: Container(),),
                  Expanded(flex:75, child:Container(
                    margin: EdgeInsets.only(left: 10,right: 20,top: 10,bottom: 10),
                    padding: EdgeInsets.only(right: 20),
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: colors[index],begin: Alignment.topRight,end: Alignment.bottomLeft),//add end in this line that I forgate.
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [BoxShadow(color: colors[index][0],blurRadius: 3,offset: Offset(3,3))]
                    ),

                    child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 20),
                      Text(name[index],style: TextStyle(color: Colors.white,fontFamily: 'Carter',fontSize: 30),),
                      Text(price[index],style: TextStyle(color: Colors.white,fontFamily: 'Carter',fontSize: 20),),
                      SizedBox(height: 5,),
                      FaIcon(Icons.add_circle_outline_rounded,color: Colors.white,size: 40,),
                      Text(desc[index],style: TextStyle(color: Colors.white,fontFamily: 'Carter',fontSize: 18),),
                    ],
                    ),
                  ))
                ],
              ),

              Row(
                children: [
                  Expanded(flex: 70,child: Hero(tag: shoes[index], 
                  child: Container(
                    margin: EdgeInsets.only(left: 5,right: 25,top: 11,bottom: 10),
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(image: AssetImage(shoes[index]),fit: BoxFit.fill),
                    ),
                  )),),

                  Expanded(flex:30, child:Container()),
                ],
              )


            ],
          ),
        );
      },
      )

    ],

    ),

    );
  }
}