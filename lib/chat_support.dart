import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatSupport extends StatefulWidget{

  @override
  State<ChatSupport> createState() => _ChatSupportState();
}

class _ChatSupportState extends State<ChatSupport> {

  Map chat={
    0:["s",
      "Hi Kitsbase, Let me know you need help and you can ask us any questions about this order.",
      "assets/images/supp_person1.png","09:19 PM"
    ],
    1:["c","I want to know why is it taking so long?","","09:21 PM"],
    2:["s","Sorry for the delay Kitsbase, \nI am calling the kitchen and delivery executive to know your order status.\n\nDon’t worry!","assets/images/supp_person2.png","09:24 PM"],
  };

  TextEditingController msgController= new TextEditingController();

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text("Support", style: TextStyle(color:Colors.black,fontSize: 18, fontWeight: FontWeight.w600,)),
      ),
      backgroundColor: Color(0xFFF8F8F8),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              width: w,
              height: 181,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFDCDCE4)),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top:16,
                    child: Container(
                      width: w,
                      height: 151,
                      padding: const EdgeInsets.symmetric(horizontal: 16,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order  #1234',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.30,
                            ),
                          ),
                          const SizedBox(height: 14),
                          Text(
                            'Krishnapatnam Kitchen',
                            style: TextStyle(
                              color: Color(0xFF181B19),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 14),
                          Container(
                            width: w-60,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '1x Chicken Biryani',
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
                          Container(
                            width: w-60,
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
                          const SizedBox(height: 14),
                          Container(
                            width: w-60,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Item Total',
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
                                  '₹459',
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              padding: const EdgeInsets.all(10),
              child: Text(
                '05 Dec, 09:19 PM',
                style: TextStyle(
                  color: Color(0xFF161616),
                  fontSize: 14,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Divider(),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chat.length,
                  itemBuilder: (context,index){
                return chat.values.elementAt(index)[0].toString().compareTo("s")==0?
                Container(
                  width: w,
                  margin: EdgeInsets.all(15),
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 300,
                    child: Row(
                      children: [
                        // sender img
                        Container(
                          width: 46.15,
                          height: 46.18,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 46.15,
                                height: 46.18,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(chat.values.elementAt(index)[2]),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Message
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 230.77,
                          child: Column(
                            children: [
                              Container(
                                decoration: ShapeDecoration(
                                  color: Color(0xFFF5F5F5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(23.08),
                                      topRight: Radius.circular(23.08),
                                      bottomLeft: Radius.circular(3.85),
                                      bottomRight: Radius.circular(23.08),
                                    ),
                                  ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  width: 200,
                                  child: Text(chat.values.elementAt(index)[1],
                                    style: TextStyle(color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  chat.values.elementAt(index)[3],
                                  style: TextStyle(
                                    color: Color(0xFF757575),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ):Container(
                  width: w,
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 231,
                    child: Column(
                      children: [
                        Container(
                          width: 193,
                          padding: EdgeInsets.all(15),
                          decoration: ShapeDecoration(
                            color: Color(0xFFF7F4E6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(23.08),
                                topRight: Radius.circular(23.08),
                                bottomLeft: Radius.circular(23.08),
                                bottomRight: Radius.circular(3.85),
                              ),
                            ),
                          ),
                          child: Text(chat.values.elementAt(index)[1],
                            style: TextStyle(
                              color: Color(0xFF795F04),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          width: 193,
                          padding: EdgeInsets.all(10),
                          child: Text(
                            chat.values.elementAt(index)[3],
                            style: TextStyle(
                              color: Color(0xFF757575),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
            // Message Text Field
            Container(
              width: w,
              height: 80.77,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Color(0x19000000), blurRadius: 0.96, offset: Offset(0, -0.96), spreadRadius: 0,)],
              ),
              child: Container(
                width: w-30,
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                decoration: ShapeDecoration(color: Color(0xFFF8F2DC), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23.08),),),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: w-60-24,
                      height: 40,alignment: Alignment.center,
                      child: TextField(
                        controller: msgController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Write a message',
                          hintStyle: TextStyle(color: Color(0xFF757575), fontSize: 13, fontWeight: FontWeight.w400,),),

                        onSubmitted: (val){
                          setState(() {
                            chat.addAll({chat.length:["c",msgController.text.trim(),"","${DateTime.now().hour}:${DateTime.now().minute} ${DateTime.now().hour>12?"PM":"AM"}"]});
                          });
                        },
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          chat.addAll({chat.length:["c",msgController.text.trim(),"","${DateTime.now().hour}:${DateTime.now().minute} ${DateTime.now().hour>12?"PM":"AM"}"]});
                        });
                      },
                      child: Container(
                          width: 27.36,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Icon(Icons.send,color: Color(0xFF795F04),)
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}