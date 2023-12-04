import 'package:flutter/material.dart';
import 'package:indyen/help_chat.dart';
import 'package:indyen/home.dart';
import 'package:indyen/profile.dart';



class HelpSupport extends StatefulWidget {
  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {
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
        title: Text("Help & Support", style: TextStyle(color:Colors.black,fontSize: 18, fontWeight: FontWeight.w600,)),
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
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
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
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpChat()));
                                  },
                                  child: Text(
                                    'Chat Customer Care',
                                    style: TextStyle(
                                      color: Color(0xFF161616),
                                      fontSize: 16,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpChat()));
                                  },
                                    child: Icon(Icons.arrow_forward_ios_rounded,size: 18,)),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16),
                          Container(
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
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                                  },
                                  child: Text(
                                    'Send a mail',
                                    style: TextStyle(
                                      color: Color(0xFF161616),
                                      fontSize: 16,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                                    },
                                    child: Icon(Icons.arrow_forward_ios_rounded,size: 18,)),
                              ],
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

      bottomNavigationBar: bottomBar(context,1),
    );
  }
}