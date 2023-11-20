import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indyen/otp1.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String phoneNumber = '';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 50),
              alignment: Alignment.topCenter,
              child: Image.asset("assets/images/logo.png"),
            ),
          
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Text("Login or Sign Up",style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,

              ),),
            ),
          ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.all(10.0),
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: InternationalPhoneNumberInput(
                          inputBorder: InputBorder.none,
                          onInputChanged: (PhoneNumber number) {
                            // Callback to handle changes in phone number input
                            print(number.phoneNumber); // You can use this value as needed
                          },
                          onInputValidated: (bool value) {
                            // Callback to handle validation
                            print(value);
                          },
                          selectorConfig: SelectorConfig(
                            selectorType: PhoneInputSelectorType.DIALOG,
                          ),
                          ignoreBlank: false,
                          autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle: TextStyle(color: Colors.black),
                          initialValue: PhoneNumber(isoCode: 'IN'),
                        ),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(20),
              height: 55,
              width:MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Otp1()));
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
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("By continuing, you agree to our Terms and Conditions & Privacy Policy",style: TextStyle(
                fontSize: 14,
                fontFamily: "Outfit",
                color: Color(0xFF5B5B5E),
              ),
              textAlign: TextAlign.center,),
            )
            ],
        ),
      ),

    );
  }
}