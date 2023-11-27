import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indyen/chat_support.dart';

class HelpChat extends StatefulWidget{

  @override
  State<HelpChat> createState() => _HelpChatState();
}

class _HelpChatState extends State<HelpChat> {

  Map chat={
    0:["s",
      "Hi Kitsbase, Let me know you need help and you can ask us any questions about this order.",
      "assets/images/supp_person1.png","11:02 PM"
    ],};

  TextEditingController msgController= new TextEditingController();

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text("Help & Support", style: TextStyle(color:Colors.black,fontSize: 18, fontWeight: FontWeight.w600,)),
      ),
      backgroundColor: Color(0xFFF8F8F8),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '25 Dec, 11:01 PM',
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

            Positioned(bottom: 0,
              child: GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ChatSupport()));
                },
                child: Container(
                  width: w,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Color(0x19000000), blurRadius: 5,  spreadRadius: 2,)],
                  ),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: w/2-20, height: 53,
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        decoration: ShapeDecoration(color: Color(0xFFB38E07), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14),),),
                        child: Text(
                          'Start Chat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}