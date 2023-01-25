import 'package:flutter/material.dart';
import '../styleguide/font_style.dart';
import 'login.dart';
import '../main.dart';
import 'signup.dart';
import 'package:get/get.dart';
import 'dart:ffi';

void main() => runApp(splashscreen());
//import 'home_admin.dart';
class splashscreen extends StatelessWidget {
  const splashscreen({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFF6F6F6))
      
      ,
      
home: Scaffold(
         body :SafeArea(
          
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 16.0,
              ),

              Text("Welcome to Fimos!",style: head, ),
               SizedBox(
                height: 16.0,
              ),
              Image.asset('assets/images/grass_bg.png'),
              SizedBox(
                height: 30.0,
              ),
               SizedBox(
                  width: 315, // <-- Your width
                  height: 41, // <-- Your height
                  child: TextButton(
                      
                    style: TextButton.styleFrom(
                    foregroundColor: Color(0xFFFFFFFF),
                    backgroundColor: Color(0xFF307A59),
                    textStyle: const TextStyle(fontSize: 20),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    
                  ),
                  onPressed: () {
                      Get.to(() => Signup());
                  },
                  
                  child:  Text('Daftar', style: button_t),
                    ),
                ),

                SizedBox(
                height: 12,
              ),
                 SizedBox(
                  width: 315, // <-- Your width
                  height: 41, // <-- Your height
                  child: TextButton(
                      
                    style: TextButton.styleFrom(
                    foregroundColor: Color(0xFFFFFFFF),
                    backgroundColor: Color(0xFF307A59),
                    textStyle: const TextStyle(fontSize: 20),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    
                  ),
                  onPressed: () {
                   Get.to(() => login());
                  },
                  
                  child:  Text('Masuk', style: button_t),
                    ),
                )
            ],
          ),


        
        )));
  }
}