import 'package:flutter/material.dart';
import '../main.dart';
import '../styleguide/font_style.dart';
import 'splashscreen.dart';
import '../CRUD/crud_auth_login.dart';
import 'package:get/get.dart';
import '../controller/suplaicontroller.dart';
import 'feeding.dart';
import 'editProfile.dart';
import '../parts/headerStaff.dart';
import '../parts/infocard.dart';
import '../parts/dashboardStaff.dart';

void main() => runApp(home_staff());

class home_staff extends StatelessWidget {
  final log = Get.put(AuthController());
  final tbh = Get.put(SuplaiController(),permanent: true);
  final uc = Get.put(UserControl());
   final  List<String> data= [
      "Edit Profile",
      "Logout",
      
     ];
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
//header
         Container(
        
          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
          width: 324,
          height: 44,
          //color: white,
          child: Row(crossAxisAlignment: 
           CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [

             HeaderStaff()                         
            ],
          ),
         ),
//review elements
        SizedBox(
        height: 35,
        ),       

         infoCard(),  

        SizedBox(
        height: 28,
        ),   

         DashboardStaff(),

        SizedBox(
        height: 16,
        ),  


              
            ],
        
          ),
        )));
    ;
  }
}