import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Pure Veg',
                                style: TextStyle(
                                  color: Color(0xFF181B19),
                                  fontSize: 12,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          width: 12,
                          height: 12,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 12,
                                  height: 12,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 3,
                                top: 3,
                                child: Container(
                                  width: 7,
                                  height: 6,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Icon(Icons.check,color: Colors.lightGreen,)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
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
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Non Veg',
                                style: TextStyle(
                                  color: Color(0xFF181B19),
                                  fontSize: 12,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          width: 12,
                          height: 12,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 12,
                                  height: 12,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 3,
                                top: 3,
                                child: Container(
                                  width: 7,
                                  height: 6,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(children: [
                                      //img
                                      ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
                ],),
    ));
  }
}
class IndyenKitchenFoodAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 375,
            height: 1325,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Colors.white),
            child: Stack(
              children: [
                Positioned(
                  left: 20,
                  top: 167,
                  child: Container(
                    width: 335,
                    height: 51,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 335,
                            height: 51,
                            decoration: ShapeDecoration(
                              color: Color(0xFFF7F1DC),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 23,
                          top: 17,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 33,
                                top: 0,
                                child: Text(
                                  'Search for Kitchen, Food...',
                                  style: TextStyle(
                                    color: Color(0xFF7C7C7C),
                                    fontSize: 15,
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
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
                Positioned(
                  left: 10,
                  top: 242,
                  child: Container(
                    width: 355,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFFDCDCE4)),
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
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Sort',
                                      style: TextStyle(
                                        color: Color(0xFF181B19),
                                        fontSize: 12,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                width: 12,
                                height: 12,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Stack(children: [

                                    ]),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
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
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Pure Veg',
                                      style: TextStyle(
                                        color: Color(0xFF181B19),
                                        fontSize: 12,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                width: 12,
                                height: 12,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 12,
                                        height: 12,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 3,
                                      top: 3,
                                      child: Container(
                                        width: 7,
                                        height: 6,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Stack(children: [

                                            ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
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
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Non Veg',
                                      style: TextStyle(
                                        color: Color(0xFF181B19),
                                        fontSize: 12,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                width: 12,
                                height: 12,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 12,
                                        height: 12,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 3,
                                      top: 3,
                                      child: Container(
                                        width: 7,
                                        height: 6,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Stack(children: [
                                          Image.asset("assets/images/logo.png")

                                            ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 525,
                  child: Container(
                    height: 96,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                            color: Color(0xFFC4C4C4),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: -9,
                                        top: -0.82,
                                        child: Container(
                                          width: 67.09,
                                          height: 45.82,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage("https://via.placeholder.com/67x46"),
                                              fit: BoxFit.fill,
                                            ),
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
                                  height: 12,
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
                                            color: Color(0xFFC4C4C4),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: -9,
                                        top: -0.82,
                                        child: Container(
                                          width: 67.09,
                                          height: 45.82,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage("https://via.placeholder.com/67x46"),
                                              fit: BoxFit.fill,
                                            ),
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
                                  height: 12,
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
                                            color: Color(0xFFC4C4C4),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: -9,
                                        top: -0.82,
                                        child: Container(
                                          width: 67.09,
                                          height: 45.82,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage("https://via.placeholder.com/67x46"),
                                              fit: BoxFit.fill,
                                            ),
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
                                            color: Color(0xFFC4C4C4),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: -9,
                                        top: -0.82,
                                        child: Container(
                                          width: 67.09,
                                          height: 45.82,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage("https://via.placeholder.com/67x46"),
                                              fit: BoxFit.fill,
                                            ),
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
                                  height: 12,
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
                                            color: Color(0xFFC4C4C4),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: -9,
                                        top: -0.82,
                                        child: Container(
                                          width: 67.09,
                                          height: 45.82,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage("https://via.placeholder.com/67x46"),
                                              fit: BoxFit.fill,
                                            ),
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
                                  height: 12,
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
                Positioned(
                  left: 20,
                  top: 300,
                  child: Container(
                    height: 170,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 335,
                          height: 170,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 335,
                                  height: 170,
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
                          width: 335,
                          height: 170,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 335,
                                  height: 170,
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
                          width: 335,
                          height: 170,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 335,
                                  height: 170,
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
                Positioned(
                  left: 20,
                  top: 1049,
                  child: Container(
                    height: 170,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 335,
                          height: 170,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 335,
                                  height: 170,
                                  decoration: ShapeDecoration(
                                    color: Color(0x66181B19),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
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
                                  'Barbecue Kitchen',
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
                          width: 335,
                          height: 170,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 335,
                                  height: 170,
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
                          width: 335,
                          height: 170,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 335,
                                  height: 170,
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
                Positioned(
                  left: 16,
                  top: 490,
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
                Positioned(
                  left: 16,
                  top: 645,
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
                Positioned(
                  left: 12,
                  top: 680,
                  child: Container(
                    width: 347,
                    height: 310,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 4,
                          top: 0,
                          child: Container(
                            width: 343,
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
                          ),
                        ),
                        Positioned(
                          left: 4,
                          top: 0,
                          child: Container(
                            width: 343,
                            height: 190,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: -60.61,
                                  top: -24.45,
                                  child: Container(
                                    width: 430.68,
                                    height: 241.91,
                                    padding: const EdgeInsets.only(
                                      top: 14.90,
                                      left: 26.82,
                                      right: 27.08,
                                      bottom: 14.89,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 376.79,
                                          height: 212.12,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage("https://via.placeholder.com/377x212"),
                                              fit: BoxFit.fill,
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
                        ),
                        Positioned(
                          left: 14,
                          top: 10,
                          child: Container(
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
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: SizedBox(
                                            width: 17.54,
                                            child: Text(
                                              '4.5',
                                              style: TextStyle(
                                                color: Colors.black,
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 14,
                          top: 200,
                          child: Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Krishnapatnam Kitchen',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Container(
                                  width: 10,
                                  height: 10,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 10,
                                          height: 10,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF06C167),
                                            shape: OvalBorder(),
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
                        Positioned(
                          left: 14,
                          top: 229,
                          child: Container(
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
                        ),
                        Positioned(
                          left: 162,
                          top: 179,
                          child: Container(
                            width: 28,
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
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 14,
                          top: 261,
                          child: Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 12,
                                  height: 12,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(children: [

                                      ]),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'Nexus Hyderabad, Kukatpally, Hyderabad',
                                  style: TextStyle(
                                    color: Color(0xFF7D8391),
                                    fontSize: 12,
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 154,
                          child: Container(
                            width: 81,
                            height: 26,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 18,
                                  top: 9,
                                  child: Text(
                                    '25% OFF',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Text(
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 285,
                          child: Container(
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
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
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
                ),
                Positioned(
                  left: 16,
                  top: 1013,
                  child: Text(
                    'Featured Kitchen',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 91,
                  child: Container(
                    width: 375,
                    height: 76,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 375,
                            height: 76,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignOutside,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 319,
                          top: 26,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://via.placeholder.com/40x40"),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1.50, color: Color(0xFFB38E07)),
                                borderRadius: BorderRadius.circular(62),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 27,
                          child: Container(
                            width: 259,
                            height: 41,
                            child: Stack(
                              children: [
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
                                    height: 21,
                                    child: Text(
                                      'Madhapur, Hyderabad, 50003',
                                      style: TextStyle(
                                        color: Color(0xFF7C7C7C),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 14, right: 150,
                                  child: Transform(
                                    transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      child: IconButton(icon: Transform.rotate(angle: 10,
                                      child: Icon(Icons.arrow_back_ios_new_rounded)), onPressed: () {  },)
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 8,
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(children: [

                                        ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 127.50,
                  top: 32,
                  child: Container(
                    width: 120,
                    height: 57.88,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 120,
                            height: 57.88,
                            child: Stack(children: [
                              Image.asset("assets/images/logo.png")
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 375,
                    height: 30,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 21,
                          top: 7,
                          child: SizedBox(
                            width: 54,
                            child: Text(
                              '9:41',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 330.33,
                          top: 10.33,
                          child: Container(
                            width: 24.33,
                            height: 11.33,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Opacity(
                                    opacity: 0.35,
                                    child: Container(
                                      width: 22,
                                      height: 11.33,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 1),
                                          borderRadius: BorderRadius.circular(2.67),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 2,
                                  top: 2,
                                  child: Container(
                                    width: 18,
                                    height: 7.33,
                                    decoration: ShapeDecoration(
                                      color: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(1.33),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 310,
                          top: 10.33,
                          child: Container(
                            width: 15.33,
                            height: 11,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://via.placeholder.com/15x11"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 288,
                          top: 10.67,
                          child: Container(
                            width: 17,
                            height: 10.67,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://via.placeholder.com/17x11"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 1251,
                  child: Container(
                    width: 375,
                    height: 74,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x1E3F4B5E),
                          blurRadius: 20,
                          offset: Offset(0, -4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 24,
                                          height: 24,
                                          child: Stack(children: [

                                              ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 7),
                                Text(
                                  'Explore',
                                  style: TextStyle(
                                    color: Color(0xFFB38E07),
                                    fontSize: 14,
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                    letterSpacing: -0.30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 24,
                                          height: 24,
                                          child: Stack(children: [

                                              ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 7),
                                Text(
                                  'Orders',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF8E8E93),
                                    fontSize: 14,
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 24,
                                          height: 24,
                                          child: Stack(children: [

                                              ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 7),
                                Text(
                                  'Notifications',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF8E8E93),
                                    fontSize: 14,
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  child: Stack(children: [

                                      ]),
                                ),
                                const SizedBox(height: 7),
                                Text(
                                  'Cart',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF8E8E93),
                                    fontSize: 14,
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.30,
                                  ),
                                ),
                              ],
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
    );
  }
}