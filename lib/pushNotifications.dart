import 'package:flutter/material.dart';
import 'package:indyen/home.dart';

import 'package:flutter_switch/flutter_switch.dart';

class PushNotifications extends StatefulWidget {
  @override
  State<PushNotifications> createState() => _PushNotificationsState();
}

class _PushNotificationsState extends State<PushNotifications> {
  var status=true;

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
        title: Text("Push Notifications", style: TextStyle(color:Colors.black,fontSize: 18, fontWeight: FontWeight.w600,)),
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
                            FlutterSwitch(
                              height: 23,
                              width: 45,
                              activeColor: Color(0xFFB38E07),
                              value: status,padding: 1.8,
                              toggleSize: 20,
                              onToggle: (val) {
                                setState(() {
                                  status = val;
                                });
                              },
                            ),
                          ],
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

      bottomNavigationBar: bottomBar(context),
    );
  }
}