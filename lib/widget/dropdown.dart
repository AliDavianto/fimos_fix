import 'package:flutter/material.dart';
import '../screen/editProfile.dart';
import '../styleguide/font_style.dart';
import 'package:get/get.dart';
import '../CRUD/crud_auth_login.dart';

Widget DropdownButtons(){

  final log = Get.put(AuthController());
    final  List<String> data= [
      "Edit Profile ",
      "Logout",
      
     ];
     return Container(
      child: DropdownButtonHideUnderline(
          child:   DropdownButton(
            icon: Icon(
                  Icons.settings,
                  color: black,
                  size: 30,
                ),
                                   
           onChanged: (value){
          print(value);
          if (value == "Logout"){
            log.logout();
          } else {
            Get.to(() => editProfile()); 
          }
          },
                                    
          items: data.map((e) => DropdownMenuItem(
         value : e,
          child: Text(e),
          )).toList(),
           ),
          ),
     );

}