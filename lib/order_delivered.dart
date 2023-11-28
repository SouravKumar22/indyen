import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';


class OrderDelivered extends StatefulWidget{
  @override
  State<OrderDelivered> createState() => _OrderDeliveredState();
}

class _OrderDeliveredState extends State<OrderDelivered> {

  int rating = 4;
  int deliveryRating=4;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text("Order Delivered", style: TextStyle(color:Colors.black,fontSize: 18, fontWeight: FontWeight.w600,)),
      ),
      body: Stack(
        children: [
          Positioned(top: 0,
            child: Container(
              height: h-96,

              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        width:w,
                        height: w,
                        child: Stack(
                          children: [
                            Image.asset("assets/images/maptrack.png",fit: BoxFit.fitWidth,),
                            Positioned(
                                top:90,left:51,
                                child: Image.asset("assets/images/2locations.png",scale:2)),
                          ],
                        )),
                    Container(width: w-30,
                      child: Column(
                        children: [
                          Container(alignment: Alignment.center,
                            width: w-40,
                            height: 50,
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Color(0xFFB38E07),
                                borderRadius: BorderRadius.all(Radius.circular(25))
                            ),
                            child: Row(children: [
                              Container(
                                width:35,height: 35,
                                margin: const EdgeInsets.only(left: 15,right: 20),
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/profile4.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(27.91),
                                  ),
                                ),
                              ),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Justin Fidelis',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFFFFEFE),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'Delivery Executive',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFFFFEFE),
                                      fontSize: 10.47,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],),
                            ],),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            width: w-60,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Your order has been delivered. The kitchen delivered your order in just ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '35 Mins',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '.',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('How was your food?',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                          ),
                          Image.asset("assets/images/pie.png",scale: 2,),
                          Container(width: w-60,
                            padding: EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              for(int i=1;i<=5;i++)
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      rating=i;
                                    });
                                  },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(i<=rating?Icons.star_rounded:Icons.star_outline_rounded,size: 40,color: i<=rating?Color(0xFFF5C443):Color(0xFF757575),),
                                    ))
                            ],),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('How was your delivery?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Image.asset("assets/images/boy.png",scale: 2,),
                          Container(width: w-60,
                            padding: EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for(int i=1;i<=5;i++)
                                  GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          deliveryRating=i;
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(i<=deliveryRating?Icons.star_rounded:Icons.star_outline_rounded,size: 40,color: i<=deliveryRating?Color(0xFFF5C443):Color(0xFF757575),),
                                      ))
                              ],),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 90,)
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: w,
              padding: EdgeInsets.all(10),
              height: 96,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Color(0x19000000), blurRadius: 10, spreadRadius: 1,)],
              ),
              child: Container(
                width: w-30,
                height: 53,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                decoration: ShapeDecoration(
                  color: Color(0xFFB38E07),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Done',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),)
        ],
      ),
    );
  }
}