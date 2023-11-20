import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alocation extends StatefulWidget{
  @override
  State<Alocation> createState() => _AlocationState();
}

class _AlocationState extends State<Alocation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Stack(
            children:[
              Image.asset("assets/images/map1.jpg",
                fit: BoxFit.fitWidth,),
              Positioned(
                top: 40,
                left: 10,
                child: IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  }, icon: Icon(Icons.arrow_back_outlined,
                  color: Colors.black,),
                ),
              ),
              Positioned(
                top: 100,
                left: 20,
                right: 20,
                child: TextField(
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF7C7C7C)
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white, // Set the background color
                    contentPadding: EdgeInsets.all(12.0), // Set the padding inside the text field
                    prefixIcon: Icon(Icons.search,color: Colors.black,),
                    hintText: 'Search for area, street etc..',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(width: 0.5, color: Color(0xFF7C7C7C),)// Set the rounded corners
                    ),
                  ),
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width/2-90,
                top: 170,
                child: Container(
                  height: 35,
                  width:176,
                  child: TextButton(
                    onPressed: () {
                      // Add your button press logic here
                      print('Button pressed');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white, // Set the background color to white
                      primary: Colors.black, // Set the text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0), // Set the rounded corners
                        side: BorderSide(
                          color: Colors.green, // Set the border color to green
                          width: 0.8, // Set the border thickness
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.gps_fixed,
                          color: Colors.green,
                          size: 15,// Set the prefix icon color
                        ),
                        SizedBox(width: 8.0), // Add some spacing between the icon and text
                        Text(
                          'Use my current Location',
                          style: TextStyle(fontSize: 12,
                              color: Color(0xFF34A853)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 333,
                left:82,
                child: Container(
                  width: 140.0, // Adjust the width of the circle
                  height: 140.0, // Adjust the height of the circle
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color(0xFF06C167).withOpacity(0.01), // Adjust the opacity for the faded color
                        Colors.grey.shade100,
                      ],
                    ),
                    border: Border.all(
                      color: Color(0xFF06C167), // Set the border color
                      width: 1.5, // Set the border thickness
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 379,
                left:133,
                child: Container(
                  width: 38.0, // Adjust the width of the circle
                  height: 38.0, // Adjust the height of the circle
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: CupertinoColors.white,
                    border: Border.all(
                      color: Color(0xFF06C167), // Set the border color
                      width: 1.5, // Set the border thickness
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 385,
                  left: 143,
                  child: Image.asset("assets/images/locate.png")),
              Positioned(
                top:280,
                left: 60,
                child: Container(
                  height: 40,
                  child: Card(
                    elevation: 10.0, // Set the elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0), // Set the corner radius
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "We'll show you Kitchens near to this location",
                        style: TextStyle(fontSize: 10.0),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
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
            TextFieldWithPrefix(context),
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
                        MaterialPageRoute(builder: (context) => ()),
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
                    child: Text('Enter complete address',style: TextStyle(
                      fontSize: 16,
                    ),),
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

Widget TextFieldWithPrefix(BuildContext context) {
  return Row(
    children: [
      Container(
        padding: const EdgeInsets.all(8.0),
        width: MediaQuery.of(context).size.width-50,
        height: 80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Madhapur, Hyderabad",
              style: TextStyle(
                color: Color(0xFF111719),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Bhagya Nagar Colony, Kukatpally, Hyderabad, Telangana",
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF7C7C7C)
              ),),
            Divider(
              thickness: 1,
              color: Color(0xFFEBEBEB),
            )

          ],
        ),
      ),
    ],
  );
}