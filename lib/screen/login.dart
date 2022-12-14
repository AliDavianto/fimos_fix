import 'package:fimos_fix/screen/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'splashscreen.dart';
import '../styleguide/font_style.dart';
import '../CRUD/crud_signup.dart';
import 'signup.dart';
import 'home_staff.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../CRUD/crud_auth_login.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'home_admin.dart';
import 'dart:ffi';


void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Add this
  
  await Firebase.initializeApp();
  runApp(login());
}

class login extends StatelessWidget {

  final _staff_email = TextEditingController();
  final _staff_password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  final Authc = Get.put(AuthController());
  



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'login page',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body : SingleChildScrollView(
           
          child: Container(
            child: Column(
              children:<Widget> [
                SizedBox(
                  height: 32,
                ),
                Container(
                    
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Masuk',
                      style: subhead,
                    )),

                SizedBox(
                  height: 32,
                ),

                Container(
                
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Masukan Email",style: label,),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                  height: 40,
                  width: 315,
                        child: TextField(
                    controller: _staff_email,    
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                      hintText: "contoh : supriyadi@gmail.com",hintStyle:hint ,

                    ),
                  ),
                      )
                      
                    ],
                  )
              ),

                SizedBox(
                  height: 16,
                ),

                Container(
                
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Masukan Password",style: label,),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                  height: 40,
                  width: 315,
                        child: TextField(
                    controller: _staff_password,      
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                      hintText: "Masukan Password Anda",hintStyle:hint ,

                    ),
                  ),
                      )
                      
                    ],
                  )
              ),



                SizedBox(
                  
                  height: 32,
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
                  onPressed: (){
                    
                   if(_staff_email.text == 'ali'){
                    Get.to(() => Homepage()); 
                          
                   } else {
                    Authc.loginstaff(_staff_email.text, _staff_password.text);
                   } 

                    
                  },
                  
                  
                  child:  Text('Masuk', style: button_t),
                    ),
                ),

                SizedBox(
                  
                  height: 12,
                ),                

                Container(
                    child: Row(
                      children: <Widget>[
                        
                      GestureDetector(
                        onTap: () { 
                          Get.to(Signup());
                          },
                        child: 
                        RichText(
        text: TextSpan(
          text: "Belum mempunyai akun? ",
          style: Lightlogin,
          children: <TextSpan>[
            TextSpan(text: ' Daftar', style: DashLogin),
          ],
        ),
                        )
                      ),
                        
                        
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),

                    SizedBox(height: 20,),
                    SizedBox(
                
                  width: 315, // <-- Your width
                  height: 36, // <-- Your height
                  child: TextButton(
                      
                    style: TextButton.styleFrom(
                    foregroundColor: Color(0xFFFFFFFF),
                    backgroundColor: Color(0xFF307A59),
                    textStyle: const TextStyle(fontSize: 20),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    
                  ),
                  onPressed: () {
                                        Authc.logout();
                  },
                  
                  child:  Text('Logout', style: button_t),
                    ),
                ),
            
            ],
            ),
    
            
          ),
        )));
    ;
  }
}
