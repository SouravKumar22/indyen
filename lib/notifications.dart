import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
class Notifications extends StatefulWidget{
  @override
  State<Notifications> createState() => _NotificationsState();
}
class _NotificationsState extends State<Notifications> {
  final List<String> dataList = [
    'Your order has arrived',
    'Your order is on its way',
    'Your order has been placed',
    'Confirm your phone number',
    'We have updated our Privacy Policy',
    'Your order has been cancelled',
    'Your order has been placed'];
  final List<String> time=['2m', '50m', '1h','5d','6d','1w','1w'];
  final int indexWithSubtitle = 4;
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
        title: Text("Notifications",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Expanded(
          child: ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (context, index) {
              // Create a different widget for each list item
              return Column(
                children: [
                  Container(
                    child: ListTile(
                      minLeadingWidth: 0,
                      leading: index == 0?Container(width:10,child: Center(child: Icon(Icons.circle_sharp, size: 10,color: Color(0xFFB38E07),))):null,
                      title: Text(dataList[index]),
                      trailing: Text(
                        time[index],
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                        ),
                      ),
                      subtitle: index == indexWithSubtitle ? Padding(
                        padding: const EdgeInsets.only(top: 5.0,bottom: 10),
                        child: Text('View Privacy Policy'),
                      ) : null,
                      onTap: () {
                        // Handle tap on the list item
                        //print('Tapped on ${dataList[index]}');
                      },
                    ),
                  ),
                  Divider(),
                ],
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: bottomBar(context,2),
    );
  }
}