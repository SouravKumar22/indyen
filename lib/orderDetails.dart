import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indyen/restaurantDetails.dart';

class OrderDetails extends StatefulWidget{
  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>RestaurantDetails()));
          },
        ),
        title: Text("Order Details", style: TextStyle(color:Colors.black,fontSize: 18, fontWeight: FontWeight.w600,)),
      ),

      body: Stack(
        children: [
          Positioned(top: 0,
            child: Container(
              height: h-200,
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      alignment: Alignment.centerLeft,
                      child: Text(
                          "Order Summary",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          )
                      ),
                    ),
                    Container(
                      width: w-30,
                      height: 329,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 16,
                            top: 16,
                            child: Text(
                              'Krishnapatnam Kitchen',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 51,
                            child: Container(
                              width: w,
                              height: 262,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: w-30,
                                    padding: EdgeInsets.symmetric(horizontal: 15),
                                    child: Row(
                                     children: [
                                        Text(
                                          '1x Chicken Biryani',
                                          style: TextStyle(
                                            color: Color(0xFF161616),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          '₹249',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF161616),
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 14),
                                  Container(width: w-30,
                                    padding: EdgeInsets.symmetric(horizontal: 15),

                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '1x Schezwan Fried Rice',
                                          style: TextStyle(
                                            color: Color(0xFF161616),
                                            fontSize: 14,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          '₹210',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF161616),
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Divider(),
                                  ),
                                  Container(width: w-30,
                                    padding: EdgeInsets.symmetric(horizontal: 15),

                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Item Total', style: TextStyle(color: Color(0xFF161616),fontSize: 14, fontWeight: FontWeight.w500,),),
                                        Spacer(),
                                        Text(
                                          '₹459',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF161616),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 14),
                                  Container(width: w-30,
                                    padding: EdgeInsets.symmetric(horizontal: 15),

                                    child: Row(
                                      children: [
                                        Text(
                                          'Item Discount',
                                          style: TextStyle(
                                            color: Color(0xFF161616),
                                            fontSize: 14,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          '-₹0',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF52B46B),
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 14),
                                  Container(width: w-30,
                                    padding: EdgeInsets.symmetric(horizontal: 15),

                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Delivery Fee',
                                          style: TextStyle(
                                            color: Color(0xFF161616),
                                            fontSize: 14,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          '₹15',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF161616),
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 14),
                                  Container(width: w-30,
                                    padding: EdgeInsets.symmetric(horizontal: 15),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Processing Fee',
                                          style: TextStyle(
                                            color: Color(0xFF161616),
                                            fontSize: 14,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          '₹4.08',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF161616),
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 14),
                                  Container(width: w-30,
                                    padding: EdgeInsets.symmetric(horizontal: 15),
                                    child: Row(
                                      children: [
                                        Text(
                                          'GST',
                                          style: TextStyle(
                                            color: Color(0xFF161616),
                                            fontSize: 14,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          '₹30.16',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF161616),
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    child: Divider(),
                                  ),
                                  Container(width: w-30,
                                    padding: EdgeInsets.symmetric(horizontal: 15),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Grand Total',
                                          style: TextStyle(
                                            color: Color(0xFF161616),
                                            fontSize: 14,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          '₹508',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF161616),
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
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
            ),
          ),
          Positioned(bottom: 0,
            child: Container(
              color: Colors.white,
              width: w,
              padding: EdgeInsets.all(10),
              height: 96,
              child: Row(
                children: [
                  Container(
                    width: w/2-20,
                    height: 53,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                        Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: w/2-20,
                    height: 53,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color:  Color(0xFFB38E07)),
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      shape: BoxShape.rectangle
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Back',
                          style: TextStyle(
                            color:  Color(0xFFB38E07),
                            fontSize: 18,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}