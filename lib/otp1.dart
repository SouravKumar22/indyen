import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indyen/location1.dart';

class Otp1 extends StatefulWidget{
  @override
  State<Otp1> createState() => _Otp1State();
}

class _Otp1State extends State<Otp1> {
  TextEditingController _otpController1 = TextEditingController();
  TextEditingController _otpController2 = TextEditingController();
  TextEditingController _otpController3 = TextEditingController();
  TextEditingController _otpController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('OTP Verification',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),),
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();

          }, icon: Icon(Icons.arrow_back_outlined,
        color: Colors.black,),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text(
              'We have sent a verification code to',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15),
            Text("+91 9123456789"),
            SizedBox(height: 50),
            Text("Enter the Code",style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildOTPTextField(_otpController1),
                buildOTPTextField(_otpController2),
                buildOTPTextField(_otpController3),
                buildOTPTextField(_otpController4),
              ],
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(20),
              height: 55,
              width:MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Slocation()),
                  );// Add your button press logic here
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Color(0xFFB38E07),
                  backgroundColor: Color(0xFFB38E07), // Hex code for the background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0), // Set the rounded corners
                  ),
                ),
                child: Text('Continue',style: TextStyle(
                  fontSize: 18,
                ),),
              ),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn’t receive the OTP? ", style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF5B5B5E),
                ),
                textAlign: TextAlign.center,),
                Text("Resend OTP", style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF977702),
                ),
                  textAlign: TextAlign.center,),
              ],
            ),

          ],
        ),
      ),
    );
  }
  Widget buildOTPTextField(TextEditingController otp) {
    return Container(
      width: 65,
      // height: 65,
      child: TextField(
        maxLength: 1,
        controller: otp,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width:1.2, color: Color(0xFFB38E07),
            ), // Set your desired color
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
           counter: Container(),
        ),
      ),
    );
  }
}