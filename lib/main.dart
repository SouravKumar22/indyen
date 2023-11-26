import 'package:flutter/material.dart';
import 'package:indyen/cartScreen.dart';
import 'package:indyen/helpSupport.dart';
import 'package:indyen/orderDetails.dart';
import 'package:indyen/profile.dart';
import 'package:indyen/pushNotifications.dart';
import 'package:indyen/restaurantDetails.dart';
import 'package:indyen/splash.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
      ),
      home: Profile()));
      // home: Splash()));
}