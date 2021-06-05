import 'package:flutter/material.dart';
import 'package:magazine_luiza/screens/home/home.dart';
import 'package:magazine_luiza/style.dart';

void main() {
  runApp(MaterialApp(
    title: "Magazine Luiza",
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(
      primarySwatch: blueTheme,
    ),
  ));
}
