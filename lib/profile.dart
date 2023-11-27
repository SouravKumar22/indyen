import 'package:flutter/material.dart';
import 'package:indyen/edit_profile.dart';
import 'package:indyen/helpSupport.dart';
import 'package:indyen/home.dart';
import 'package:indyen/orderDetails.dart';
import 'package:indyen/order_history.dart';
import 'package:indyen/pushNotifications.dart';
import 'package:indyen/splash.dart';



class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 2.5,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text("Profile", style: TextStyle(color:Colors.black,fontSize: 18, fontWeight: FontWeight.w600,)),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Color(0xFFFDFDFD)),
              child: Stack(
                children: [
                  Positioned(
                    left: 15.50,
                    top: 40,
                    child: Container(
                      width: w-30,
                      height: 155,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 40,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/profile2.png"),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [

                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: Text(
                                  'John Kevin',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  '+91 1234567890',
                                  style: TextStyle(
                                    color: Color(0xFF181B19),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  'johnkevin@gmail.com',
                                  style: TextStyle(
                                    color: Color(0xFF181B19),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    left: 15.50,
                    top: 230,
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit_profile()));
                            },
                            child: Container(
                              width: w-30,
                              height: 56,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x23707070),
                                    blurRadius: 12,
                                    offset: Offset(0, 3),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                               child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    margin: EdgeInsets.only(right: 20),
                                    child: Icon(Icons.account_circle_outlined),
                                  ),
                                  Text(
                                    'Edit Account',
                                    style: TextStyle(
                                      color: Color(0xFF161616),
                                      fontSize: 16,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios_rounded,size: 18,),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderHistory()));
                            },
                            child: Container(
                              width: w-30,
                              height: 56,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x23707070),
                                    blurRadius: 12,
                                    offset: Offset(0, 3),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                               child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    margin: EdgeInsets.only(right: 20),
                                    child: Image.asset("assets/images/orders2.png"),
                                  ),
                                  Text(
                                    'My Orders',
                                    style: TextStyle(
                                      color: Color(0xFF161616),
                                      fontSize: 16,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios_rounded,size: 18,),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          GestureDetector(
                            onTap: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderHistory()));
                            },
                            child: Container(
                              width: w-30,
                              height: 56,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x23707070),
                                    blurRadius: 12,
                                    offset: Offset(0, 3),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                               child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    margin: EdgeInsets.only(right: 20),
                                    child:  Image.asset("assets/images/address.png"),
                                  ),
                                  Text(
                                    'My Addresses',
                                    style: TextStyle(
                                      color: Color(0xFF161616),
                                      fontSize: 16,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios_rounded,size: 18,),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>PushNotifications()));
                            },
                            child: Container(
                              width: w-30,
                              height: 56,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x23707070),
                                    blurRadius: 12,
                                    offset: Offset(0, 3),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                               child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    margin: EdgeInsets.only(right: 20),
                                    child: Icon(Icons.info_outline_rounded),
                                  ),
                                  Text(
                                    'Push Notifications',
                                    style: TextStyle(
                                      color: Color(0xFF161616),
                                      fontSize: 16,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios_rounded,size: 18,),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpSupport()));
                            },
                            child: Container(
                              width: w-30,
                              height: 56,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x23707070),
                                    blurRadius: 12,
                                    offset: Offset(0, 3),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                               child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    margin: EdgeInsets.only(right: 20),
                                    child: Icon(Icons.help_outline_rounded),
                                  ),
                                  Text(
                                    'Help & Support',
                                    style: TextStyle(
                                      color: Color(0xFF161616),
                                      fontSize: 16,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios_rounded,size: 18,)
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          GestureDetector(
                            onTap: (){
                              Navigator.popUntil(context, (route) =>false );
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Splash()));
                            },
                            child: Container(
                              width: w-30,
                              height: 56,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x23707070),
                                    blurRadius: 12,
                                    offset: Offset(0, 3),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                               child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    margin: EdgeInsets.only(right: 20),
                                    child: Icon(Icons.logout),
                                  ),
                                  Text(
                                    'Log out',
                                    style: TextStyle(
                                      color: Color(0xFF161616),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios_rounded,size: 18,),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),

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
      
      bottomNavigationBar: bottomBar(context),
    );
  }
}