import 'package:flutter/material.dart';


// ignore: must_be_immutable
class shoe3 extends StatefulWidget {
   Map details;
   shoe3 (this.details);
 


  @override
  State<shoe3> createState() => _shoe3State();
}

class _shoe3State extends State<shoe3 > {

  var size =42;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
    appBar: AppBar(backgroundColor: Colors.white,elevation: 0,toolbarHeight: 80,
    leading:IconButton(onPressed: (){
      Navigator.pushNamed(context, 'shoe2');
    }, icon: Icon(Icons.arrow_back,color: Colors.black.withOpacity(0.8),)),
    title: Icon(Icons.eco,color: Colors.black,size: 40,),
    centerTitle: true,
    actions: [
      Icon(Icons.favorite_outline_rounded,color: Colors.black.withOpacity(0.8),size: 30,),
      SizedBox(width: 20,),

    ],
    
    ),


    body: ListView(padding: EdgeInsets.symmetric(horizontal: 30),
    physics: BouncingScrollPhysics(),
    children: [
      Center(child: Text(widget.details['title'],style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.w500,fontFamily: 'Carter'),)),
      Center(child: Text('destiny'+widget.details['desc'],style: TextStyle(color: Colors.black.withOpacity(0.5),fontFamily: 'Carter',fontSize: 18),),),

      Hero(
        tag: widget.details['image'],
         child: Container(margin: EdgeInsets.symmetric(horizontal: 20),
         height: 200,
         decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(widget.details['image']),fit: BoxFit.fitWidth),
         ),


         )),

         Row(
          children: [
            Icon(Icons.water_rounded,color: Colors.blue,),
            Text('  Waterproof',style: TextStyle(color: Colors.black,fontFamily: 'Carter',fontSize: 18),)
          ],
         ),

          Row(
          children: [
            Icon(Icons.spa,color: Colors.green,),
            Text('  Eco friendly',style: TextStyle(color: Colors.black,fontFamily: 'Carter',fontSize: 18),)
          ],
         ),

          Row(
          children: [
            Icon(Icons.local_laundry_service_rounded,color: Colors.purpleAccent,),
            Text('  Flexible',style: TextStyle(color: Colors.black,fontFamily: 'Carter',fontSize: 18),)
          ],
         ),

         SizedBox(height: 30,),
         Text('Size',style: TextStyle(color: Colors.black.withOpacity(0.5),fontFamily: 'Carter',fontSize: 20),),
         SizedBox(height: 20,),
         Container(
          height: 40,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    size = index + 40;
                  });},

                  child: Container(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                  decoration: BoxDecoration(
                    color: size == index+ 40? Colors.purple: Colors.purpleAccent.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),

                  child: Text('${index+40}',style: TextStyle(fontFamily: 'Carter',color: Colors.white,fontSize: 24),),
                  ),
              ),
              );
            },
            ),
         ),

         SizedBox(height: 30,),
         Text('price',style: TextStyle(fontFamily: 'Carter',color: Colors.black.withOpacity(0.5),fontSize: 20),),

         Row(
          children: [
            Expanded(flex: 4,child: Text( widget.details['price'],style: TextStyle(fontFamily: 'Carter',fontSize: 30,color: Colors.black),),),
            Expanded(flex: 6, child: Container(padding: EdgeInsets.symmetric(horizontal: 12, vertical:4 ),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.9),
              borderRadius: BorderRadius.circular(8),
            ),

            child: Center(child: Text('Add to cart',style: TextStyle(color: Colors.white,fontFamily: 'Carter',fontSize: 24),),),
            ),),
          ],
         ),

        SizedBox(height: 15,),
        Center(child: Text('delivered within 6-7 hours',style: TextStyle(fontFamily: 'Carter',color: Colors.black.withOpacity(0.6),fontSize: 18),),),
        SizedBox(height: 30,),


    ],

    ),
    );
  }
}