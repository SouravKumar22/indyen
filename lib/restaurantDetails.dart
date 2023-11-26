import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantDetails extends StatefulWidget{


  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  Map dish = {
    0:["assets/images/dish1.png","Chicken Biryani",249,"Jumbo sized Chicken Biryani Plate with Leg Piece",0],
    1:["assets/images/dish2.png","Chicken Zinger Burger",210,"Jumbo sized Chicken Zinger Burger with cheese.",1],
    2:["assets/images/dish3.png","Chicken Wings",499,"Jumbo sized Chicken Zinger Burger with cheese toppings.",0],
    3:["assets/images/dish4.png","Butter Masala Dosa",179,"Crispy Delicious Masala Dosa with Spices",0],
    4:["assets/images/dish5.png","Panner Sabzi with Paratha",159,"1 plate delicious Panner with coriander toppings.",0],
    5:["assets/images/dish1.png","Chicken Biryani",249,"Jumbo sized Chicken Biryani Plate with Leg Piece",0],
    6:["assets/images/dish2.png","Chicken Zinger Burger",210,"Jumbo sized Chicken Zinger Burger with cheese.",1],
    7:["assets/images/dish3.png","Chicken Wings",499,"Jumbo sized Chicken Zinger Burger with cheese toppings.",0],
    8:["assets/images/dish4.png","Butter Masala Dosa",179,"Crispy Delicious Masala Dosa with Spices",0],
    9:["assets/images/dish5.png","Panner Sabzi with Paratha",159,"1 plate delicious Panner with coriander toppings.",0],
  };

  var totalItem=0;
  double totalCost=0;
  int cartValue(){
    totalItem=0;
    totalCost=0;
    dish.values.forEach((element) {
      var t = totalItem+element[4];
      totalItem=t.toInt();
      setState(() {
        if(element[4]!=0)
        totalCost=totalCost+(element[2]*element[4]);
      });
    });
    return totalItem;
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              //Action
            },
          ),
          GestureDetector(
            onTap: (){
            },
            child: Image.asset("assets/images/sendIcon.png",scale: 2,),
          )
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0,right: 25,bottom: 70),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(2.5),
                  width: w,
                  height: 116,
                  child: Column(
                    children: [
                      Container(
                        width: 194,
                        height: 23,
                        child: Text(
                          'Krishnapatnam Kitchen',
                          style: TextStyle(
                            color: Color(0xFF181B19),
                            fontSize: 18,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: w,
                        margin: EdgeInsets.all(2.5),
                        height: 22,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                              decoration: ShapeDecoration(
                                color: Color(0xFFF6F6F6),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'FAST FOOD',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF898D9B),
                                      fontSize: 10,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: -0.20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                              decoration: ShapeDecoration(
                                color: Color(0xFFF6F6F6),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'SOUTH INDIAN',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF898D9B),
                                      fontSize: 10,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: -0.20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                              decoration: ShapeDecoration(
                                color: Color(0xFFF6F6F6),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'MUGHLAI',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF898D9B),
                                      fontSize: 10,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: -0.20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                              decoration: ShapeDecoration(
                                color: Color(0xFFF6F6F6),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'BARBEQUE',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF898D9B),
                                      fontSize: 10,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: -0.20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: w,
                        margin: EdgeInsets.all(2.5),

                        height: 30,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                              decoration: ShapeDecoration(
                                color: Color(0xFF1BA672),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Outfit',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  Icon(Icons.star,color: Colors.yellow.shade800,size: 13,)
                                ],
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '253 ratings',
                              style: TextStyle(
                                color: Color(0xFF161616),
                                fontSize: 12,
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(2.5),
                        alignment: Alignment.center,
                        width: w,
                        height: 16,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 16,
                              height: 16,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Image.asset("assets/images/clock.png"),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '35-40 min ',
                              style: TextStyle(
                                color: Color(0xFF565B6A),
                                fontSize: 12,
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Container(
                              width: 4,
                              height: 4,
                              decoration: ShapeDecoration(
                                color: Color(0xFF565B6A),
                                shape: OvalBorder(),
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '2.1 KM',
                              style: TextStyle(
                                color: Color(0xFF565B6A),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(),

                Container(
                  alignment: Alignment.center,
                  width: w,
                  height: 34,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFFDCDCE4)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x33161616),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Veg',
                                style: TextStyle(
                                  color: Color(0xFF181B19),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFFDCDCE4)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x33161616),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Non Veg',
                                style: TextStyle(
                                  color: Color(0xFF181B19),
                                  fontSize: 11,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w500,
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
                Container(
                  height: h-370,
                  margin: EdgeInsets.symmetric(horizontal: 2.5,vertical: 20),
                  child:Expanded(
                    child: GridView.builder(

                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Adjust the number of columns as needed
                        crossAxisSpacing: 8.0, // Adjust the spacing between columns
                        mainAxisSpacing: 8.0, // Adjust the spacing between rows
                        childAspectRatio: 0.6
                      ),
                      itemCount: dish.length, // Adjust the number of items in the grid
                      itemBuilder: (context, index) {
                        return Container(
                          width: w/2-84,
                          // height: 350,
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 150.98,
                                      height: 120,
                                      child: Container(
                                        width: 200.55,
                                        height: 132,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                          image: DecorationImage(
                                            image: AssetImage("${dish.values.elementAt(index)[0]}"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 146.47,
                                            child: Text(
                                              '${dish.values.elementAt(index)[1]}',
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                color: Color(0xFF161616),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            '₹${dish.values.elementAt(index)[2]}',
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Color(0xFF161616),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              height: 0,
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          SizedBox(
                                            width: 146.47,
                                            child: Text(
                                              '${dish.values.elementAt(index)[3]}',
                                              style: TextStyle(color: Color(0xFF7D8391), fontSize: 12, fontWeight: FontWeight.w400, height: 0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              dish.values.elementAt(index)[4]==0?Container(
                                width: 141,
                                height:40,
                                padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 10),
                                decoration: ShapeDecoration(
                                  color: Color(0x19B38E07),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1, color: Color(0xFF795F04)),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  shadows: [
                                    BoxShadow(color: Color(0x33000000), blurRadius: 4, offset: Offset(0, 1), spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: GestureDetector(
                                  onTap:(){
                                    setState(() {
                                      dish.values.elementAt(index)[4]=1;
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.add,size: 20,color: Color(0xFF795F04),),
                                      Text(
                                        'Add', style: TextStyle(
                                          color: Color(0xFF795F04), fontSize: 15, fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                                  :
                              Container(
                                width: 141,
                                height:40,
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                                        onTap: () {
                                          setState(() {
                                            dish.values.elementAt(index)[4]=(dish.values.elementAt(index)[4])-1;
                                          });
                                        },
                                    child: Icon(Icons.remove,color: Colors.white,size: 20,)),
                                    //Value
                                    Text(
                                      "${dish.values.elementAt(index)[4]}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                    //Add
                                    GestureDetector(
                                      onTap:(){
                                        setState(() {
                                          dish.values.elementAt(index)[4]=(dish.values.elementAt(index)[4])+1;
                                        });
                                      },
                                        child: Icon(Icons.add,color: Colors.white,size: 20,)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                  )
                ),
              ],
            ),
          ),

          Positioned(
            left: 0,bottom: 0,
            child: Container(
              width: w,
              height: 70,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(15),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x1E3F4B5E),
                    blurRadius: 20,
                    offset: Offset(0, -4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${cartValue()} Item in cart',
                          style: TextStyle(
                            color: Color(0x9902060C),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 0.08,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          padding: const EdgeInsets.only(right: 59),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '₹',
                                            style: TextStyle(
                                              color: Color(0xBF02060C),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '${totalCost}',
                                            style: TextStyle(
                                              color: Color(0xBF02060C),
                                              fontSize: 16,
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color(0xFF1BA672),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Checkout',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9200000166893005),
                            fontSize: 16,
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
          ),
        ],
      ),
    );
  }
}