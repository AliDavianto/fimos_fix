import 'dart:ui';
import 'suplai.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../styleguide/font_style.dart';
import 'splashscreen.dart';
import 'signup.dart';
import 'home_staff.dart';
import 'feeding.dart';
import 'package:get/get.dart';
import '../CRUD/crud_auth_login.dart';
import 'package:get/get.dart';
import 'package:fimos_fix/parts/header.dart';
import '../parts/laporanParts.dart';
void main() => runApp(report());

class report extends StatelessWidget {
    final log = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFF6F6F6)),
      home: Scaffold(
        body : SingleChildScrollView(
           
          child: Column(
            children: <Widget>[
                SizedBox(
                height: 12,
                ),

         Container(
        
          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
          width: 324,
          height: 44,
          //color for header
          //color: darkGreen,
          child: Row(crossAxisAlignment: 
           CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [

                     Header()                   
            ],
          ),
         ),

        SizedBox(
        height: 35,
        ),       

      LaporanParts(),
      
             
 //akhir widget            
            ],
          )
        )));
    ;
  }
}

