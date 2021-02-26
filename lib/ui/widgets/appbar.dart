import 'package:flutter/material.dart';

AppBar appBar(String title) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Color(0xFF6B6EB1),
    automaticallyImplyLeading: false,
    title: Text(title),
  );
}
