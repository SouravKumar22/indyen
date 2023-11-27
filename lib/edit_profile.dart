import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Edit_profile extends StatefulWidget{
  @override
  State<Edit_profile> createState() => _Edit_profileState();
}

class _Edit_profileState extends State<Edit_profile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFFDFDFD),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_sharp,
          color: Colors.black,
        ),
        title: Text("Edit Account",
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),),
      ),
      body: Container(height: 200,width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Profile Container
            Container(
              padding: EdgeInsets.symmetric(vertical: 40),
              height: 200,width: 120,
              child: Stack(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/profile3.png"),
                              fit: BoxFit.fill,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom:5,
                      right:0,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFB38E07),
                        child: Icon(Icons.camera_alt_outlined,color: Colors.white,
                        size: 20,),))
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}