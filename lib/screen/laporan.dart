import 'dart:ui';
import '../controller/reportController.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../styleguide/font_style.dart';
import 'package:get/get.dart';
import '../CRUD/crud_auth_login.dart';
import 'package:get/get.dart';
import 'package:fimos_fix/parts/header.dart';
import '../parts/laporanParts.dart';
import '../parts/reportStream.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(report());

class report extends StatelessWidget {
    final log = Get.put(AuthController());
    final rc = Get.put(reportController());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFF6F6F6)),
      home: Scaffold(
        body : reportStreaming()
        )
        );
    ;
  }
}