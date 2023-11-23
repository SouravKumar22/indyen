import 'package:flutter/material.dart';
import 'package:indyen/restaurantDetails.dart';
import 'package:indyen/splash.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
      ),
      home: RestaurantDetails()));
      // home: Splash()));
}