import 'package:flutter/material.dart';
import 'package:indyen/cartScreen.dart';
import 'package:indyen/edit_profile.dart';
import 'package:indyen/helpSupport.dart';
import 'package:indyen/help_chat.dart';
import 'package:indyen/orderDetails.dart';
import 'package:indyen/order_delivered.dart';
import 'package:indyen/order_history.dart';
import 'package:indyen/profile.dart';
import 'package:indyen/pushNotifications.dart';
import 'package:indyen/restaurantDetails.dart';
import 'package:indyen/splash.dart';
import 'package:indyen/thankyou.dart';
import 'package:indyen/trackOrder.dart';

import 'chat_support.dart';
import 'home.dart';
import 'notifications.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
      ),
      home: Home()));
}
