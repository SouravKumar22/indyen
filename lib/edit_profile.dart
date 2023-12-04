import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indyen/home.dart';
import 'package:indyen/profile.dart';

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
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          }, icon: Icon(Icons.arrow_back_outlined,
          color: Colors.black,),
        ),
        title: Text("Edit Account",
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 15,),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Profile Container
              Container(
                padding: EdgeInsets.symmetric(vertical: 40),
                height: 200,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
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
                          size: 20,),)),
                  ],
                ),
              ),
              // Name TextField
              Container(
                // height: 80,
                padding: EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.all(Radius.circular(16))
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name",style: TextStyle(color: Colors.grey),),
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "John Kevin",
                        hintStyle: TextStyle(color: Colors.black)
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                // height: 80,
                padding: EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.all(Radius.circular(16))
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email",style: TextStyle(color: Colors.grey),),
                    TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "johnkevin123@gmail.com",
                          hintStyle: TextStyle(color: Colors.black)
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                // height: 80,
                padding: EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.all(Radius.circular(16))
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Phone No.",style: TextStyle(color: Colors.grey),),
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "+92 3014124781",
                          hintStyle: TextStyle(color: Colors.black)
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 80,),
              Container(
                width: MediaQuery.of(context).size.width-30,
                height: 53,
                padding: const EdgeInsets.symmetric(horizontal: 96, vertical: 16),
                margin: EdgeInsets.only(bottom: 50),
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
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w600,
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
      bottomNavigationBar: bottomBar(context,0),
    );
  }
}