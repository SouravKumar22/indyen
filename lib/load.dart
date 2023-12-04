import 'dart:async';

import 'package:flutter/material.dart';
import 'package:indyen/home.dart';
import 'package:indyen/splash.dart';
class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();

    // Set up a timer to navigate to the main screen after 3 seconds
    Timer(Duration(seconds: 2), () {
      // Replace the current screen with the main screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
          LoadingScreen(),
        ]),
      );
  }
}

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 375,
                  height: 812,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 167,
                        child: Container(
                          width: 335,
                          height: 51,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 68.50,
                        top: 252,
                        child: Container(
                          width: 23,
                          height: 14,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 99.50,
                        top: 257.50,
                        child: Container(
                          width: 6,
                          height: 2.99,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 142.50,
                        top: 252,
                        child: Container(
                          width: 49,
                          height: 14,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 196.50,
                        top: 253,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 200.70,
                        top: 257.60,
                        child: Container(
                          width: 4.80,
                          height: 3,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 242.50,
                        top: 252,
                        child: Container(
                          width: 47,
                          height: 14,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 294.50,
                        top: 253,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 298.70,
                        top: 257.60,
                        child: Container(
                          width: 4.80,
                          height: 3,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 526,
                        child: Container(
                          width: 69,
                          height: 96,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23,
                        top: 530.18,
                        child: Container(
                          width: 67.09,
                          height: 45.82,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 35,
                        top: 584,
                        child: Container(
                          width: 39,
                          height: 12,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 182,
                        top: 526,
                        child: Container(
                          width: 69,
                          height: 96,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 185,
                        top: 530.18,
                        child: Container(
                          width: 67.09,
                          height: 45.82,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 194,
                        top: 584,
                        child: Container(
                          width: 45,
                          height: 14,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 263,
                        top: 526,
                        child: Container(
                          width: 69,
                          height: 96,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 266,
                        top: 530.18,
                        child: Container(
                          width: 67.09,
                          height: 45.82,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 278,
                        top: 584,
                        child: Container(
                          width: 39,
                          height: 12,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 344,
                        top: 526,
                        child: Container(
                          width: 69,
                          height: 96,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 347,
                        top: 530.18,
                        child: Container(
                          width: 67.09,
                          height: 45.82,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 359,
                        top: 584,
                        child: Container(
                          width: 39,
                          height: 12,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 101,
                        top: 526,
                        child: Container(
                          width: 69,
                          height: 96,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 104,
                        top: 530.18,
                        child: Container(
                          width: 67.09,
                          height: 45.82,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 116,
                        top: 584,
                        child: Container(
                          width: 39,
                          height: 12,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 300,
                        child: Container(
                          width: 335,
                          height: 170,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 410,
                        child: Container(
                          width: 62,
                          height: 19,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 436,
                        child: Container(
                          width: 126,
                          height: 14,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 376,
                        child: Container(
                          width: 196,
                          height: 29,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 165,
                        top: 459,
                        child: Container(
                          width: 6,
                          height: 6,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 176,
                        top: 459,
                        child: Container(
                          width: 6,
                          height: 6,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 187,
                        top: 459,
                        child: Container(
                          width: 6,
                          height: 6,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 198,
                        top: 459,
                        child: Container(
                          width: 6,
                          height: 6,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 209,
                        top: 461,
                        child: Container(
                          width: 2,
                          height: 2,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 490,
                        child: Container(
                          width: 130,
                          height: 20,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 91,
                        child: Container(
                          width: 375,
                          height: 76,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 319,
                        top: 117,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 56,
                        top: 118,
                        child: Container(
                          width: 110,
                          height: 21,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 56,
                        top: 138,
                        child: Container(
                          width: 180,
                          height: 21,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 274,
                        top: 135.50,
                        child: Container(
                          width: 9,
                          height: 4.50,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 126,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23.75,
                        top: 127.50,
                        child: Container(
                          width: 16.50,
                          height: 21,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 34.88,
                        top: 752,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 37.87,
                        top: 755,
                        child: Container(
                          width: 15.75,
                          height: 15.75,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 51.32,
                        top: 768.44,
                        child: Container(
                          width: 4.56,
                          height: 4.56,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23.88,
                        top: 783,
                        child: Container(
                          width: 46,
                          height: 15,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 128.62,
                        top: 752,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 131.62,
                        top: 753.99,
                        child: Container(
                          width: 18,
                          height: 20.03,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136.12,
                        top: 756.41,
                        child: Container(
                          width: 9.10,
                          height: 9.89,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 131.73,
                        top: 759,
                        child: Container(
                          width: 17.79,
                          height: 5,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 140.63,
                        top: 764,
                        child: Container(
                          width: 1,
                          height: 10.01,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 119.12,
                        top: 783,
                        child: Container(
                          width: 43,
                          height: 15,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 222.38,
                        top: 752,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 226.22,
                        top: 755,
                        child: Container(
                          width: 16.31,
                          height: 15,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 231.38,
                        top: 770,
                        child: Container(
                          width: 6,
                          height: 3.75,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 196.38,
                        top: 783,
                        child: Container(
                          width: 76,
                          height: 15,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 318.12,
                        top: 754,
                        child: Container(
                          width: 19.55,
                          height: 14.99,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 331.12,
                        top: 771.50,
                        child: Container(
                          width: 2.50,
                          height: 2.50,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 323.12,
                        top: 771.50,
                        child: Container(
                          width: 2.50,
                          height: 2.50,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 314.12,
                        top: 783,
                        child: Container(
                          width: 28,
                          height: 15,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 375,
                          height: 30,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(1.00, 0.00),
                              end: Alignment(-1, 0),
                              colors: [Color(0xFFF1EFEF), Color(0xFFF8F7F7), Color(0xFFE7E5E5)],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 127.50,
                        top: 32,
                        child: Opacity(
                          opacity: 0.03,
                          child: Container(
                            width: 120,
                            height: 57.88,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 120,
                                    height: 57.88,
                                    child: Stack(children: [
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 360,
                child: SizedBox(
                  height: 100,
                  width: 296,
                  child: Text(
                    'Preparing a Feast for You, Hungry for perfection, just a moment more!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFA7A7A7),
                      fontSize: 16,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}