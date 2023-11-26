import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indyen/home.dart';
import 'package:indyen/thankyou.dart';

class Payment extends StatefulWidget{
  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {


  List modes=['Paytm UPI','PhonePe','GPay','Add UPI ID'];
  List cards=['************2575','Add Credit, Debit Cards'];

  List imgModes=['assets/images/paytm.png','assets/images/phonepe.png','assets/images/gpay.png','assets/images/addupi.png'];
  List cardimg=['assets/images/card.png','assets/images/addcard.png'];
  String selectedValue = 'Paytm UPI';
  String selectedValue1 = "";
  String selectedValue3 = "";

  @override
  Widget build(BuildContext context) {
    var w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black,
        size: 28,),
        backgroundColor: Color(0xFFF9F9F9),
        title: Text(
          'Payments',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(top: 0,
            child: Container(
              width: w,
              height: MediaQuery.of(context).size.height-200,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      width: w,
                      height: 261,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 40,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 32,
                            top: 20,
                            child: Text(
                              'UPI',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Container(margin: EdgeInsets.only(top: 40),
                            child: ListView.builder(itemCount: modes.length, itemBuilder: (context,index){
                              return modes.length-1==index?Container(
                                width: w,
                                height: 50,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: w,
                                      height: 50,
                                      color: Colors.white,
                                    ),
                                    Positioned(
                                      left: 65,
                                      top: 25,
                                      child: Text(
                                        '${modes[index]}',
                                        style: TextStyle(
                                          color: Color(0xFF161616),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 20,
                                      top: 23,
                                      child: Container(
                                        width: 26,
                                        height: 22,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(imgModes[index],),
                                          ),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 10,
                                      bottom: 0,
                                      child:  Icon(Icons.arrow_forward_ios_rounded,size: 18,)
                                    ),
                                    Divider(thickness: 1,)
                                  ],
                                ),
                              ):Container(
                                width: w,
                                height: 50,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: w,
                                      height: 50,
                                      color: Colors.white,
                                    ),
                                    Positioned(
                                      left: 94,
                                      top: 20,
                                      child: Text(
                                        '${modes[index]}',
                                        style: TextStyle(
                                          color: Color(0xFF161616),
                                          fontSize: 16,
                                          fontFamily: 'Gilroy',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 48,
                                      top: 15,
                                      child: Container(
                                        width: 32,
                                        height: 30,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(imgModes[index]),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 5,
                                      top: 8,
                                      child:  Radio(
                                        activeColor: Color(0xFF795F04),
                                        groupValue: modes[index].toString(),
                                        value: selectedValue,
                                        onChanged: (String? val){
                                          setState(() {
                                            selectedValue = modes[index];
                                          });
                                        },
                                      ),
                                    ),
                                    Divider(thickness: 1,)
                                  ],
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      width: w,
                      height: 161,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 40,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 32,
                            top: 20,
                            child: Text(
                              'Cards',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40),
                            child: ListView.builder(itemCount: cards.length, itemBuilder: (context,index){
                              return cards.length-1==index?Container(
                                width: w,
                                height: 50,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: w,
                                      height: 50,
                                      color: Colors.white,
                                    ),
                                    Positioned(
                                      left: 65,
                                      top: 25,
                                      child: Text(
                                        '${cards[index]}',
                                        style: TextStyle(
                                          color: Color(0xFF161616),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 20,
                                      top: 23,
                                      child: Container(
                                        width: 26,
                                        height: 22,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(cardimg[index],),
                                          ),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        right: 10,
                                        bottom: 0,
                                        child:  Icon(Icons.arrow_forward_ios_rounded,size: 18,)
                                    ),
                                    Divider(thickness: 1,)
                                  ],
                                ),
                              ):Container(
                                width: w,
                                height: 50,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: w,
                                      height: 50,
                                      color: Colors.white,
                                    ),
                                    Positioned(
                                      left: 94,
                                      top: 20,
                                      child: Text(
                                        '${cards[index]}',
                                        style: TextStyle(
                                          color: Color(0xFF161616),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 48,
                                      top: 15,
                                      child: Container(
                                        width: 32,
                                        height: 30,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(cardimg[index]),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 5,
                                      top: 8,
                                      child:  Radio(
                                        activeColor: Color(0xFF795F04),
                                        groupValue: cards[index].toString(),
                                        value: selectedValue1,
                                        onChanged: (String? val){
                                          setState(() {
                                            selectedValue1 = cards[index];
                                          });
                                        },
                                      ),
                                    ),
                                    Divider(thickness: 1,)
                                  ],
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      width: w,
                      height: 110,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 40,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 32,
                            top: 20,
                            child: Text(
                              'Cash',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40),
                            child: Container(
                              width: w,
                              height: 50,
                              child: Stack(
                                children: [
                                  Container(
                                    width: w,
                                    height: 50,
                                    color: Colors.white,
                                  ),
                                  Positioned(
                                    left: 94,
                                    top: 20,
                                    child: Text(
                                      'Pay to Rider',
                                      style: TextStyle(
                                        color: Color(0xFF161616),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 48,
                                    top: 15,
                                    child: Container(
                                      width: 32,
                                      height: 30,
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/cod.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 5,
                                    top: 8,
                                    child:  Radio(
                                      activeColor: Color(0xFF795F04),
                                      value: "Pay to Rider",
                                      groupValue: selectedValue3,
                                      onChanged: (String? val){
                                        setState(() {
                                          selectedValue3 = "Pay to Rider";
                                        });
                                      },
                                    ),
                                  ),
                                  Divider(thickness: 1,)
                                ],
                              ),
                            )
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Thankyou()));
              },
              child: Container(
                padding:EdgeInsets.all(10),
                color: Colors.white,
                width: w,
                height: 120,
                child: Stack(
                  children: [
                    Container(margin: EdgeInsets.only(left: 5,right:5,top: 50),
                      width: w-30,
                      height: 53,
                      padding: const EdgeInsets.symmetric(horizontal: 96, vertical: 12),
                      decoration: ShapeDecoration(
                        color: Color(0xFFB38E07),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Thankyou()));

                            },
                            child: Text(
                              'Pay Now',
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
                    Positioned(
                      left: 16,
                      top: 16,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Total :',
                              style: TextStyle(
                                color: Color(0xFF161616),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: ' ₹508',
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
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}