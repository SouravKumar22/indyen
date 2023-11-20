import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'location2.dart';


class Slocation extends StatefulWidget{
  @override
  State<Slocation> createState() => _SlocationState();
}

class _SlocationState extends State<Slocation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Select Location',
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
            Container(
              margin: EdgeInsets.only(top:20.0,left:20,right:20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF2F3F2), // Set the background color
                  contentPadding: EdgeInsets.all(12.0), // Set the padding inside the text field
                  prefixIcon: Icon(Icons.search,color: Colors.black,),
                  hintText: 'Search your location',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0), // Set the rounded corners
                    borderSide: BorderSide.none, // Hide the default border
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                // Add your logic for handling the button press (e.g., getting the current location)
                print('Current Location button pressed');
              },
              child: Container(
                margin: EdgeInsets.only(left: 30, top: 10.0),
                child: Row(
                  children: [
                    Icon(Icons.gps_fixed, color: Color(0xFFB38E07),
                    size: 16.0,), // GPS icon in the prefix
                    SizedBox(width: 8.0), // Add some spacing between the icon and text
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Clocation()),
                        );
                        _showModalBottomSheet(context);
                      },
                      child: Text('Use Current Location',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFB38E07),
                      ),),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text("Rd No.60, Madhapur, Hyderabad, 500033",
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFF7C7C7C),
              ),),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
              child: Divider(
                thickness: 1.2,
                color: Color(0xFFE2E2E2),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  // Add your button press logic here
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.white, // Set the background color to white
                  side: BorderSide(
                    color: Color(0xFFB38E07), // Set the border color to golden
                    width: 2, // Set the border thickness
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0), // Set the rounded corners
                  ),
                ),
                child: Text(
                  'Enter location manullay',
                  style: TextStyle(fontSize: 16,
                  color: Color(0xFFB38E07)),
                ),
              ),
            )

          ],
        ),
      ),

    );
  }
}


void _showModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0), // Set the top-left radius
        topRight: Radius.circular(20.0), // Set the top-right radius
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10,),
            buildTextFieldWithPrefix(context),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                        borderRadius: BorderRadius.circular(14.0), // Set the rounded corners
                      ),
                    ),
                    child: Text('Continue',style: TextStyle(
                      fontSize: 18,
                    ),),
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your button press logic here
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.white, // Set the background color to white
                      side: BorderSide(
                        color: Color(0xFFB38E07), // Set the border color to golden
                        width: 2, // Set the border thickness
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0), // Set the rounded corners
                      ),
                    ),
                    child: Text(
                      'Enter complete address',
                      style: TextStyle(fontSize: 16,
                          color: Color(0xFFB38E07)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}