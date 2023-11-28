import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';


class TrackOrder extends StatelessWidget{
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
          title: Text("Track Order", style: TextStyle(color:Colors.black,fontSize: 18, fontWeight: FontWeight.w600,)),
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
                              top:80,left:51,
                                child: Image.asset("assets/images/direction.png",scale:2)),
                          ],
                        )),
                    Container(
                      child: Column(
                        children: [
                          Container(alignment: Alignment.center,
                            width: w-40,
                            height: 50,
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFFB38E07),
                              borderRadius: BorderRadius.all(Radius.circular(16))
                            ),
                            child: Row(children: [
                              Container(
                                width:35,height: 35,
                                margin: const EdgeInsets.only(left: 10,right: 15),
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
                              Spacer(),
                              Container(
                                width: 30,
                                height: 30,
                                margin: const EdgeInsets.symmetric(horizontal: 10),
                                decoration: ShapeDecoration(
                                  color: Color(0xFFFFFEFE),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 21,
                                      height: 21,
                                      child: Image.asset("assets/images/call.png")
                                    ),
                                  ],
                                ),
                              )
                            ],),
                          ),
                          Stack(
                            children: [
                              Positioned(
                                left:18,top:10,
                                child: Column(
                                  children: [
                                    Dash(
                                        dashThickness:2,
                                        direction: Axis.vertical,
                                        dashGap:8,
                                        dashBorderRadius:2,
                                        dashColor: Color(0xFFB38E07)),
                                    Dash(
                                        dashThickness:2,
                                        direction: Axis.vertical,
                                        dashGap:5,
                                        length:50,
                                        dashBorderRadius:2,
                                        dashColor: Colors.black87),
                                  ],
                                ),
                              ),

                              Container(
                                width: w-60,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 10),
                                      width: w-60,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.all(8.72),
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFFB38E07),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(27.91),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        width: 20.93,
                                                        height: 20.93,
                                                        child: Row(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                                width: 20.93,
                                                                height: 20.93,
                                                                child: Image.asset("assets/images/truck.png")
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(width: 14.83),
                                                Container(
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Your Order is being processed',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Color(0xFF1C2122),
                                                          fontSize: 13.95,
                                                          fontWeight: FontWeight.w700,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            '2:30pm',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF555454),
                                              fontSize: 10.47,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 10),
                                      width: w-60,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.all(8.72),
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFFB38E07),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(27.91),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        width: 20.93,
                                                        height: 20.93,
                                                        child: Row(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              width: 20.93,
                                                              height: 20.93,
                                                              child: Image.asset("assets/images/home1.png"),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(width: 14.83),
                                                Container(
                                                  child: Text(
                                                    'Your Order is being prepared',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFF1C2122),
                                                      fontSize: 13.95,
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            '2:30pm',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF555454),
                                              fontSize: 10.47,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: w-60,
                                      margin: EdgeInsets.symmetric(vertical: 10),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.all(8.72),
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFFB38E07),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(27.91),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        width: 20.93,
                                                        height: 20.93,
                                                        child: Row(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              width: 20.93,
                                                              height: 20.93,
                                                              child: Container(
                                                                width: 18,
                                                                height: 18,
                                                                child: Image.asset("assets/images/orders3.png",),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(width: 16),
                                                Container(
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Your Order is ready',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Color(0xFF1C2122),
                                                          fontSize: 13.95,
                                                          fontWeight: FontWeight.w700,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 16),
                                          Text(
                                            '2:35pm',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF555454),
                                              fontSize: 10.47,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 10),
                                      width: w-60,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.all(8.72),
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFFB38E07),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(27.91),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        width: 20.93,
                                                        height: 20.93,
                                                        child: Row(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              width: 20.93,
                                                              height: 20.93,
                                                              child: Container(
                                                                width: 18,
                                                                height: 18,
                                                                child: Image.asset("assets/images/orders3.png",),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(width: 16),
                                                Container(
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Your Order is on the way',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Color(0xFF1C2122),
                                                          fontSize: 13.95,
                                                          fontWeight: FontWeight.w700,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 16),
                                          Text(
                                            '2:37pm',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF555454),
                                              fontSize: 10.47,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 10),
                                      width: w-60,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.all(8.72),
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFFD4D2D2),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(27.91),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        width: 20.93,
                                                        height: 20.93,
                                                        child: Row(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              width: 20.93,
                                                              height: 20.93,
                                                              child: Image.asset("assets/images/home2.png"),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(width: 15),
                                                Container(
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Your Order is delivered',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Color(0xFF1C2122),
                                                          fontSize: 13.95,
                                                          fontWeight: FontWeight.w700,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            '2:49pm',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF555454),
                                              fontSize: 10.47,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 150,)
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
            color: Colors.white,
            width: w,
            padding: EdgeInsets.all(10),
            height: 96,
            child: Row(
              children: [
                Container(
                  width: w/2-20,
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
                        'Chat Support',
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
                Container(
                  width: w/2-20,
                  height: 53,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color:  Color(0xFFB38E07)),
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      shape: BoxShape.rectangle
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Back',
                        style: TextStyle(
                          color:  Color(0xFFB38E07),
                          fontSize: 18,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),)
        ],
      ),
    );
  }
}