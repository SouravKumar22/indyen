import 'package:flutter/material.dart';
import 'package:indyen/cartScreen.dart';
import 'package:indyen/edit_profile.dart';
import 'package:indyen/helpSupport.dart';
import 'package:indyen/orderDetails.dart';
import 'package:indyen/profile.dart';
import 'package:indyen/pushNotifications.dart';
import 'package:indyen/restaurantDetails.dart';
import 'package:indyen/splash.dart';
import 'package:indyen/thankyou.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
      ),
      home: Edit_profile()));
      // home: Splash()));
}