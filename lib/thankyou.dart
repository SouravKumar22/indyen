import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indyen/trackOrder.dart';

import 'home.dart';

class Thankyou extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     backgroundColor: Colors.white,
     body: Column(
     mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Container(
           height: 80,
           width: 80,
           child: Image.asset("assets/images/correct.png",),
         ),
         Container(
           margin: EdgeInsets.all(25),
           child: Text(
             'Thank you for placing the order',
             textAlign: TextAlign.center,
             style: TextStyle(
               color: Colors.black,
               fontSize: 20,
               fontWeight: FontWeight.w700,
               height: 0.06,
               letterSpacing: 0.75,
             ),
           ),
         ),
         Container(
           margin: EdgeInsets.all(8),
           child: Text(
             'We’ll get to you as soon as possible',
             textAlign: TextAlign.center,
             style: TextStyle(
               color: Color(0xFF8E8E93),
               fontSize: 17,
               fontWeight: FontWeight.w400,
               height: 0.08,
               letterSpacing: -0.41,
             ),
           ),
         ),
         Container(
           height: 165,
           width: MediaQuery.of(context).size.width,
           margin: EdgeInsets.only(top: 30, bottom: 10),
             child: Image.asset("assets/images/onway.png")),

         Container(
           height: 55,
           width: MediaQuery.of(context).size.width,
           margin: EdgeInsets.all(20),
           child: ElevatedButton(
             onPressed: () {
               Navigator.of(context).push(
                 MaterialPageRoute(builder: (context) => TrackOrder()),
               );
               // Add your button press logic here
             },
             style: ElevatedButton.styleFrom(
               elevation: 0,
               primary: Colors.white, // Set the background color to white
               side: BorderSide(
                 color: Color(0xFFB38E07), // Set the border color to golden
                 width: 2, // Set the border thickness
               ),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(12.0), // Set the rounded corners
               ),
             ),
             child: Text(
               'Track Order',
               style: TextStyle(fontSize: 16,
                   color: Color(0xFFB38E07)),
             ),
           ),
         ),
         Container(
           margin: EdgeInsets.all(20),
           height: 50,
           width:MediaQuery.of(context).size.width,
           child: ElevatedButton(
             onPressed: () {
               Navigator.of(context).push(
                 MaterialPageRoute(builder: (context) => Home()),
               );// Add your button press logic here
             },
             style: ElevatedButton.styleFrom(
               elevation: 0,
               primary: Color(0xFFB38E07),
               backgroundColor: Color(0xFFB38E07), // Hex code for the background color
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(14.0), // Set the rounded corners
               ),
             ),
             child: Text('Go Home',style: TextStyle(
               fontSize: 18,
             ),),
           ),
         ),
       ],
     ),
   );
  }

}