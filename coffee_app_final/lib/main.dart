import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app_final/screens/product_list.dart';


void main() {
  runApp(
    MaterialApp(
      home: ProductHome(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    ),
  );
}
