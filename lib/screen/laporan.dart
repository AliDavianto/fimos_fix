import 'dart:ui';
import 'package:fimos_fix/parts/reportStream.dart';
import 'package:get/get.dart';
import '../CRUD/crud_auth_login.dart';
import 'suplai.dart';
import 'package:flutter/material.dart';
import 'dart:ffi';
import '../parts/header.dart';
import '../parts/infocard.dart';
import '../parts/dashboard.dart';
import '../parts/laporanTerbaru.dart';
void main() => runApp(report());

class report extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFF6F6F6)),
      home: Scaffold(
        body : SingleChildScrollView(
           
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                SizedBox(
                height: 12,
                ),

         Container(
        
          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
          width: 324,
          height: 44,
          child: Row(crossAxisAlignment: 
           CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [

             Header(),
             
                          
            ],
          ),
         ),

        // SizedBox(
        // height: 15,
        // ),
    SingleChildScrollView(
      child:  SizedBox(
    height: MediaQuery.of(context).size.height,
    child: reportStreaming(),    
      )
      ),
     
          

         

        
         
            ],
          )
        )));
    ;
  }
}

