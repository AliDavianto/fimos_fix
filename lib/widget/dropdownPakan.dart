import 'package:flutter/material.dart';
import '../screen/editProfile.dart';
import '../styleguide/font_style.dart';
import 'package:get/get.dart';
import '../CRUD/crud_auth_login.dart';
class DropdownValue {
   final a = "".obs;
  
   void dropValue (x) {
    a.value = x;
    print(a);
  }

  
Widget DropdownButtonsPakan(){
  final selectedValue = ''.obs;
  final log = Get.put(AuthController());
    final  List<String> data= [
      "Hijauan",
      "Konsentrart",
      
     ];
     return Container(
      child: DropdownButtonHideUnderline(
        
          child:   DropdownButton(
            icon: Icon(
                  Icons.arrow_drop_down,
                  color: black,
                  size: 30,
                ),                          
          items: data.map((e) => DropdownMenuItem(
         value : e,
         
          child: Text(e),
          )).toList(),
                               
           onChanged: (value){
          //print(value);
          if (value == "Hijauan"){
            dropValue(value);
           
          } else {
            dropValue(value);
            
          }
          },
           ),
          ),

          
          
     );

}
}



