import 'package:flutter/material.dart';
import 'package:to_do_hive/home_page.dart';

void main() {
  runApp(MaterialApp(home: home_page(),
  theme: ThemeData(primaryColor: Colors.yellow),
  debugShowCheckedModeBanner: false,));
}

