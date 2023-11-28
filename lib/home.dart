
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indyen/cartScreen.dart';
import 'package:indyen/orderDetails.dart';
import 'package:indyen/profile.dart';

import 'notifications.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment:CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            //Logo
            Center(
            child: Image.asset("assets/images/logo.png",scale: 2,)),
            // Your location
            Container(
              height: 90,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 76,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 30,
                    top: 30,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/profile.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1.50, color: Color(0xFFB38E07)),
                            borderRadius: BorderRadius.circular(62),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned (
                    left: 20,
                    top: 27,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: Stack(
                        children: [
                          //Location icon
                          Positioned(
                            left: 0,
                            top: 8,
                            child: Container(
                              width: 24,
                              height: 24,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Stack(children: [
                                Image.asset("assets/images/location.png")
                              ]),
                            ),
                          ),
                          Positioned(
                            left: 36,
                            top: 0,
                            child: Text(
                              'Your Location',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 36,
                            top: 20,
                            child: SizedBox(
                              width: 180,
                              height: 40,
                              child: Text(
                                'Madhapur, Hyderabad, 50003',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF7C7C7C),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          //Down arrow
                          Positioned(
                            right: 120,
                            top: 8,
                            child: Container(
                              child: Icon(Icons.keyboard_arrow_down_rounded,size: 28,)
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Search bar
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              height: 51,
              child: Stack(
                children: [
                  
                  Positioned(
                    left: 20,
                    top: 15,
                    child: Icon(Icons.search,color: Color(0xFF181B19),)
                  ),
                  Positioned(
                    left: 60,
                    top: 17,
                    child: Text(
                      'Search for Kitchen, Food...',
                      style: TextStyle(
                        color: Color(0xFF7C7C7C),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
              decoration: ShapeDecoration(
                color: Color(0xFFF7F1DC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            // filters
            Container(
              height: 34,
              margin: EdgeInsets.all(25),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // sort
                  Container(
                    alignment: Alignment.center,
                    width:70,
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFDCDCE4)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sort',
                          style: TextStyle(
                            color: Color(0xFF181B19),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 2),
                        Icon(Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  // pure veg
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    decoration: ShapeDecoration(
                      color: Color(0x1906C167),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50, color: Color(0xFF06C167)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x33161616),
                          blurRadius: 4,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'Pure Veg',
                            style: TextStyle(
                              color: Color(0xFF181B19),
                              fontSize: 12,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          alignment: Alignment.center,
                          width: 12,
                          height: 12,
                          child: Icon(Icons.check,color: Colors.green,size: 12,),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: OvalBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  // non veg
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    decoration: ShapeDecoration(
                      color: Color(0x1906C167),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50, color: Color(0xFF06C167)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x33161616),
                          blurRadius: 4,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'Non Veg',
                            style: TextStyle(
                              color: Color(0xFF181B19),
                              fontSize: 12,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          alignment: Alignment.center,
                          width: 12,
                          height: 12,
                          child: Icon(Icons.check,color: Colors.green,size: 12,),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: OvalBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Deals of the day
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              alignment: Alignment.center,
              width: w,
              height: 170,
              child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12.5),
                      width: w-60,
                      height: 170,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: w-80,
                              height: 170,
                              child: Image.asset("assets/images/deal1.png"),
                              decoration: ShapeDecoration(
                                color: Color(0x66181B19),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 110,
                            child: Text(
                              '60% OFF',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 136,
                            child: Text(
                              'Exclusive on indyen app',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 76,
                            child: Text(
                              'Barbeque Kitchen',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 145,
                            top: 159,
                            child: Container(
                              width: 46,
                              height: 6,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 6,
                                      height: 6,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 11,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 22,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 33,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 44,
                                    top: 2,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 2,
                                        height: 2,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      margin: EdgeInsets.only(left: 12.5),
                      width: w-80,
                      height: 170,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: w-80,
                              height: 170,
                              child: Image.asset("assets/images/deal1.png"),
                              decoration: ShapeDecoration(
                                color: Color(0x66181B19),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 110,
                            child: Text(
                              'Open for Dine-in',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 136,
                            child: Text(
                              'Book a table',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 76,
                            child: Text(
                              'Seasons Restaurant',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 145,
                            top: 159,
                            child: Container(
                              width: 46,
                              height: 6,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 11,
                                    top: 0,
                                    child: Container(
                                      width: 6,
                                      height: 6,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 22,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 33,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 44,
                                    top: 2,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 2,
                                        height: 2,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: w-80,
                      height: 170,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: w-80,
                              height: 170,
                              child: Image.asset("assets/images/deal1.png"),
                              decoration: ShapeDecoration(
                                color: Color(0x72181B19),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 124,
                            child: Text(
                              'Pay with SBI Card at the restaurant.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 61,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Deal of the day',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                      letterSpacing: -0.30,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' \n60% OFF',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                      letterSpacing: -0.30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 149,
                            top: 159,
                            child: Container(
                              width: 46,
                              height: 6,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 2,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 2,
                                        height: 2,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 7,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 18,
                                    top: 0,
                                    child: Container(
                                      width: 6,
                                      height: 6,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 29,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 40,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Explore
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35,vertical: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                'Explore Cuisines',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            Container(
              width: w,
              height: 120,
              child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 30,),
                    Container(
                      width: 69,
                      height: 96,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 69,
                              height: 96,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                               shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x19F43F5E),
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 12,
                            top: 5,
                            child: Container(
                              width: 45,
                              height: 45,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/food1.png"),),
                                        color: Color(0xFFC4C4C4),
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 15,
                            top: 58,
                            child: SizedBox(
                              width: 39,
                              height: 35,
                              child: Text(
                                'North Indian',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF181B19),
                                  fontSize: 12,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      width: 69,
                      height: 96,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 69,
                              height: 96,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x19F43F5E),
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 12,
                            top: 5,
                            child: Container(
                              width: 45,
                              height: 45,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/food2.png"),),

                                        color: Color(0xFFC4C4C4),
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 15,
                            top: 58,
                            child: SizedBox(
                              width: 39,
                              height: 35,
                              child: Text(
                                'South Indian',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF181B19),
                                  fontSize: 12,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      width: 69,
                      height: 96,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 69,
                              height: 96,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x19F43F5E),
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 12,
                            top: 5,
                            child: Container(
                              width: 45,
                              height: 45,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/food3.png"),),
                                        color: Color(0xFFC4C4C4),
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 12,
                            top: 58,
                            child: Text(
                              'Chinese',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF181B19),
                                fontSize: 12,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      width: 69,
                      height: 96,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 69,
                              height: 96,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x19F43F5E),
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 12,
                            top: 5,
                            child: Container(
                              width: 45,
                              height: 45,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/food4.png"),),
                                        color: Color(0xFFC4C4C4),
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 15,
                            top: 58,
                            child: SizedBox(
                              width: 39,
                              height: 35,
                              child: Text(
                                'Fast Food',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF181B19),
                                  fontSize: 12,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      width: 69,
                      height: 96,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 69,
                              height: 96,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x19F43F5E),
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 12,
                            top: 5,
                            child: Container(
                              width: 45,
                              height: 45,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/food1.png"),),

                                        color: Color(0xFFC4C4C4),
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 15,
                            top: 58,
                            child: SizedBox(
                              width: 39,
                              height: 35,
                              child: Text(
                                'North Indian',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF181B19),
                                  fontSize: 12,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Recommended kitchen
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35,vertical: 0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Recommended Kitchens',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            // Restaurant cards
            Stack(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  margin: EdgeInsets.all(25),
                  width: w,
                  height: 310,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x2B8A8D9B),
                        blurRadius: 30,
                        offset: Offset(15, 15),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Image.asset("assets/images/restaurant1.png"),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          width: 48,
                          height: 24,
                          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x33FE724C),
                                blurRadius: 23.39,
                                offset: Offset(0, 5.85),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Expanded(
                            child: Row(
                              children: [
                                Text(
                                  '4.5 ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(Icons.star,color: Colors.yellow.shade800,size: 13,)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 170,
                  left: 20,
                  child: Stack(
                    children: [
                      Image.asset("assets/images/discount.png",scale: 1.8,),
                      Positioned(
                        top: 3,
                        left: 15,
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'INSTANT DISCOUNT',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 6,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.12,
                              ),
                            ),
                            Text(
                              '25% OFF',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 235,
                  left: 35,
                  child: Container(
                  child:Column(mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          'Krishnapatnam Kitchen',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                      Container(
                        width: 217,
                        height: 22,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                              decoration: ShapeDecoration(
                                color: Color(0xFFF6F6F6),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'FAST FOOD',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF898D9B),
                                      fontSize: 10,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: -0.20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                              decoration: ShapeDecoration(
                                color: Color(0xFFF6F6F6),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'SOUTH INDIAN',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF898D9B),
                                      fontSize: 10,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: -0.20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                              decoration: ShapeDecoration(
                                color: Color(0xFFF6F6F6),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'MUGHLAI',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF898D9B),
                                      fontSize: 10,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: -0.20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Row(
                          children: [
                            Image.asset("assets/images/location.png",scale: 3,),
                            Text(
                              ' Nexus Hyderabad, Kukatpally, Hyderabad',
                              style: TextStyle(
                                color: Color(0xFF7D8391),
                                fontSize: 12,
                                fontFamily: 'Gilroy',
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 151,
                          height: 13,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '₹1000 for 2 approx.',
                                style: TextStyle(
                                  color: Color(0xFF7D8391),
                                  fontSize: 11,
                                  height: 0,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                width: 3,
                                height: 3,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF7E8392),
                                  shape: OvalBorder(),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                '2.1 KM',
                                style: TextStyle(
                                  color: Color(0xFF7D8391),
                                  fontSize: 11,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  ),
                )

              ],
            ),
            // Featured kitchen
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35,vertical: 0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Featured Kitchens',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
              alignment: Alignment.center,
              width: w,
              height: 170,
              child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12.5),
                      width: w-60,
                      height: 170,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: w-80,
                              height: 170,
                              child: Image.asset("assets/images/deal1.png"),
                              decoration: ShapeDecoration(
                                color: Color(0x66181B19),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 110,
                            child: Text(
                              'Open for Delivery',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 136,
                            child: Text(
                              'Order Now!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 76,
                            child: Text(
                              'Barbeque Kitchen',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 145,
                            top: 159,
                            child: Container(
                              width: 46,
                              height: 6,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 6,
                                      height: 6,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 11,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 22,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 33,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 44,
                                    top: 2,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 2,
                                        height: 2,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      margin: EdgeInsets.only(left: 12.5),
                      width: w-80,
                      height: 170,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: w-80,
                              height: 170,
                              child: Image.asset("assets/images/deal1.png"),
                              decoration: ShapeDecoration(
                                color: Color(0x66181B19),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 110,
                            child: Text(
                              'Open for Dine-in',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 136,
                            child: Text(
                              'Book a table',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 76,
                            child: Text(
                              'Seasons Restaurant',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 145,
                            top: 159,
                            child: Container(
                              width: 46,
                              height: 6,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 11,
                                    top: 0,
                                    child: Container(
                                      width: 6,
                                      height: 6,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 22,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 33,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 44,
                                    top: 2,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 2,
                                        height: 2,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: w-80,
                      height: 170,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: w-80,
                              height: 170,
                              child: Image.asset("assets/images/deal1.png"),
                              decoration: ShapeDecoration(
                                color: Color(0x72181B19),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 124,
                            child: Text(
                              'Pay with SBI Card at the restaurant.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 61,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Deal of the day',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                      letterSpacing: -0.30,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' \n60% OFF',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                      letterSpacing: -0.30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 149,
                            top: 159,
                            child: Container(
                              width: 46,
                              height: 6,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 2,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 2,
                                        height: 2,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 7,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 18,
                                    top: 0,
                                    child: Container(
                                      width: 6,
                                      height: 6,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 29,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 40,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.95,
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD1D1D1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
                ],),
    ),
      
      bottomNavigationBar: bottomBar(context,0),
    );
  }
}

BottomNavigationBar bottomBar(BuildContext context,int currentIndex){
  return BottomNavigationBar(
    currentIndex: currentIndex,
backgroundColor: Colors.white,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Color(0xFFB38E07),
    unselectedItemColor: Color(0xFF8E8E93),
    items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.search,size: 33,),label: "Explore"),
      BottomNavigationBarItem(icon: Image.asset("assets/images/orders.png",scale: 1.5,),label: "Orders"),
      BottomNavigationBarItem(icon: Image.asset(currentIndex!=2?"assets/images/notification.png":"assets/images/notification2.png",scale: 1.5,),label: "Notification"),
      BottomNavigationBarItem(icon: Image.asset("assets/images/cart.png",scale: 1.5,),label: "Cart"),

    ],

    onTap: (val){
      if(val==0){
        Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=>Home()));
      }
      else if(val==1){
        Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=>OrderDetails()));
      }
      else if(val==2){
        Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=>Notifications()));
      }
      else if(val==3){
        Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=>CartScreen()));
      }
    },
  );
}