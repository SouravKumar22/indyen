import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget{
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
            Navigator.pop(context);
          },
        ),
        title: Text("Cart", style: TextStyle(color:Colors.black,fontSize: 18, fontWeight: FontWeight.w600,)),
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
                      width: w,
                      height: 115,
                      decoration:BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 16,
                          left: 16,
                          child: Text(
                              "Deliver to : ",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )
                          ),
                        ),
                        Positioned(
                          left: 2,top: 40,
                          child: Container(
                            width: w,height: 55,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 46,
                                  top: 0,
                                  child: Text('Home',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 46,
                                  top: 23,
                                  child: SizedBox(
                                    width: 247,
                                    child: Text(
                                      'Mega Hills, 18, Madhapur, Hyderabad, 50003',
                                      maxLines: 1,overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Color(0xFF7C7C7C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 50,
                                  top: 11,
                                    child: Icon(Icons.keyboard_arrow_down_outlined,size:25,),
                                ),
                                Positioned(
                                  left: 10,
                                  top: 8,
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Icon(Icons.location_on,color: Color(0xFFB38E07),),
                                  ),
                                ),
                                Positioned(
                                  left: 98,
                                  top: 3,
                                  child: Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 4,
                                          height: 4,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF565B6A),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Container(
                                          width: 16,
                                          height: 16,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Image.asset("assets/images/clockgreen.png")
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          '35-40 min ',
                                          style: TextStyle(
                                            color: Color(0xFF565B6A),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
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
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "Krishnapatnam Kitchen",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        )
                    ),
                  ),
                  Container(width: w,
                    height: (2*138)+20,  // itemCount*138+30
                    child: ListView.builder(
                      itemCount: 2,
                        itemBuilder: (context,index){
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        width: w-30,
                        height: 138,
                        child: Stack(
                          children: [
                            Container(
                              width: w-30,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    width: 110,
                                    height: 110,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      image: DecorationImage(image: AssetImage("assets/images/dish1.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 130,
                                    top: 20,
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Image.asset("assets/images/nonveg.png",scale: 2.5,)
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical:5.0),
                                          child: Text('Chicken Biryani', style: TextStyle(color: Color(0xFF161616), fontSize: 14, fontWeight: FontWeight.w600,),),
                                        ),
                                        Text('₹249', style: TextStyle(color: Color(0xFF161616), fontSize: 14, fontWeight: FontWeight.w700,))
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 12,right: 15,
                                    child: Container(
                                      width: 120,
                                      height:37,
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF795F04),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 1, color: Color(0x19B38E07)),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        shadows: [
                                          BoxShadow(color: Color(0x33000000),
                                            blurRadius: 4,
                                            offset: Offset(0, 1),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          //Remove
                                          GestureDetector(
                                              onTap: () {},
                                              child: Icon(Icons.remove,color: Colors.white,size: 18,)),
                                          //Value
                                          Text(
                                            "1",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15, fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          //Add
                                          GestureDetector(
                                              onTap:(){},
                                              child: Icon(Icons.add,color: Colors.white,size: 18,)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,top: 10,
                                      child: GestureDetector(
                                        onTap: () {
                                          //REMOVE ACTION
                                        },
                                          child: Icon(Icons.close,size: 18,)))
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                  Container(
                    width: w-30,
                    height: 121,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: w-30,
                            height: 121,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Color(0xFFDCDCE4)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 16,
                          child: Text(
                            'Apply Coupon / Promo Code',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 54,
                          child: Container(
                            width: w-60,
                            height: 51,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: w-60,
                                    height: 51,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 1, color: Color(0xFFB9B9BB)),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 56,
                                  top: 16,
                                  child: Text(
                                    'Coupon Code',
                                    style: TextStyle(
                                      color: Color(0xFF7E8392),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  top: 16,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Image.asset("assets/images/discount2.png"),
                                  ),
                                ),
                                Positioned(
                                  right: 20,
                                  top: 15,
                                  child: Text(
                                    'APPLY',
                                    style: TextStyle(
                                      color: Color(0xFF06C167),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: w,
                    height: 253,
                    margin: EdgeInsets.symmetric(vertical: 18),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 16,
                          top: 15.63,
                          child: Text(
                            'Bill Details',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.30,
                            ),
                          ),
                        ),

                        Positioned(
                          left: 0,
                          top: 51,
                          child: Container(
                            width: 343,
                            height: 186,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                                  width: w,
                                  child: Row(
                                    children: [
                                      Text(
                                        'Item Total',
                                        style: TextStyle(
                                          color: Color(0xFF161616),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
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
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal:15,vertical: 5),
                                  width: w,
                                  child: Row(
                                    children: [
                                      Text(
                                        'Item Discount',
                                        style: TextStyle(
                                          color: Color(0xFF161616),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
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
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal:15,vertical: 5),
                                  width: w,
                                  child: Row(
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
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal:15,vertical: 5),
                                  width: w,
                                  child: Row(
                                    children: [
                                      Text(
                                        'Processing Fee',
                                        style: TextStyle(
                                          color: Color(0xFF161616),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '₹4.08',
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
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal:15,vertical: 5),
                                  width: w,
                                  child: Row(
                                    children: [
                                      Text(
                                        'GST',
                                        style: TextStyle(
                                          color: Color(0xFF161616),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
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
                                Divider(),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal:15,vertical: 5),
                                  width: w,
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
                                      const SizedBox(width: 180),
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
                  )
                ],
                ),
              ),
            ),
          ),
          Positioned(bottom: 0,
            child: Container(
              color: Colors.white,
              width: w,
              height: 120,
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    top: 50,
                    child: Container(
                      width: w-30,
                      height: 53,
                      padding: const EdgeInsets.symmetric(horizontal: 96, vertical: 16),
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
                  ),
                  Positioned(
                    left: 16,
                    top: 16,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '₹508 ',
                            style: TextStyle(
                              color: Color(0xFF161616),
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'Proceed to Payment',
                            style: TextStyle(
                              color: Color(0xFF161616),
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
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