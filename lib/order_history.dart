import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indyen/home.dart';
import 'package:indyen/profile.dart';

class OrderHistory extends StatefulWidget{
  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  Map details={
    0:["Fri, 15 Dec 2023","Krishnapatnam Kitchen","Nexus Hyderabad, Kukatpally, Hyderabad","2 items",508,"assets/images/r1.png"],
    1:["Tue, 12 Dec 2023","Barbeque Kitchen","18, Madhapur, Hyderabad","1 item",349,"assets/images/r2.png"],
    2:["Tuesday, 03 March 2023","Barbeque Kitchen","18, Madhapur, Hyderabad","1 item",349,"assets/images/r2.png"],
    3:["Tuesday, 03 March 2023","Krishnapatnam Kitchen","Nexus Hyderabad, Kukatpally, Hyderabad","2 items",508,"assets/images/r1.png"],
  };


  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1.5,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
          },
        ),
        title: Text("Order History", style: TextStyle(color:Colors.black,fontSize: 18, fontWeight: FontWeight.w600,)),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15,right: 15,top: 5),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: details.length,
                itemBuilder: (context,index){
                  return Container(
                    width: w,
                    height: 225,
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Delivered',
                                      style: TextStyle(
                                        color: Color(0xFF00875A),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 16),
                              Text(
                                details.values.elementAt(index)[0],
                                style: TextStyle(
                                  color: Color(0xFF7A869A),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          width: w-30,
                          height: 1,
                          decoration: BoxDecoration(color: Color(0xFFF4F5F7)),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 80,
                                      height: 80,
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(details.values.elementAt(index)[5]),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 12),
                              Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      alignment: Alignment.center,
                                      child: Text(details.values.elementAt(index)[1],
                                        style: TextStyle(
                                          color: Color(0xFF162B4D),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      details.values.elementAt(index)[2],
                                      style: TextStyle(color: Color(0xFF7A869A), fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Container(
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '₹${details.values.elementAt(index)[4]}',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color(0xFF161616),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(Icons.circle,size: 5,color: Colors.grey.shade400,),
                                          ),
                                          Text(details.values.elementAt(index)[3],
                                            style: TextStyle(color: Color(0xFF7A869A),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          width: w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: w/2-40,
                                height: 44,
                                alignment: Alignment.center,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1.50, color: Color(0xFFB38E07)),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                                child: Text(
                                  'Rate',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFB38E07),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Container(
                                width: w/2-40,
                                height: 44,
                                alignment: Alignment.center,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFB38E07),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Text(
                                  'Re-Order',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: bottomBar(context,2),
    );
  }
}