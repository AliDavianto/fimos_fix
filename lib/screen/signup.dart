import 'package:flutter/material.dart';
import '../styleguide/font_style.dart';
import 'package:get/get.dart';
import 'splashscreen.dart';
import 'login.dart';
import '../CRUD/crud_signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../CRUD/crud_auth_login.dart';
import 'dart:ffi';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Add this

  await Firebase.initializeApp();
  runApp(Signup());
}

class Signup extends StatelessWidget {
  final _staff_name = TextEditingController();
  final _staff_email = TextEditingController();
  final _staff_numberHp = TextEditingController();
  final _staff_password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  
  final signup = Get.put(AuthController());
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'signup',
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
                      'Daftar',
                      style: subhead,
                    )),

                 SizedBox(
                  height: 32,
                ),

              Container(
                
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Username",style: label,),
                        SizedBox(
                          height: 8,
                        ),
                      SizedBox(
                                          height: 40,
                  width: 315,
                        child: TextField(
                    controller: _staff_name,     
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                      hintText: "contoh : Roni Untung",hintStyle:hint ,
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
                      Text("Password",style: label,),
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
                  height: 24,
                ),

                Container(
                
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nomor Handphone",style: label,),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                  height: 40,
                  width: 315,
                        child: TextField(
                    controller: _staff_numberHp , 
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                      hintText: "contoh : 0812654834543",hintStyle:hint ,
                      
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
                      Text("Masukan Email",style: label,),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                  height: 40,
                  width: 315,
                        child: TextField(
                    controller: _staff_email ,     
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                      hintText: "contoh : Roni@gmail.com",hintStyle:hint ,
                      
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
                  onPressed: () async {
                                
            
                        
            var response = await signupCrud.addstaff (
                name: _staff_name.text,
                password: _staff_password.text,
                noHp: _staff_numberHp.text,
                email: _staff_email.text,
                
                
                );
                
                if (response.code != 200) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(response.message.toString()),
                    );
                  });
            } else {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(response.message.toString()),
                    );
                  });
                        
                  } 
                  signup.signup(_staff_email.text, _staff_password.text,_staff_name.text);
                  Get.to(() => login()); 
                  }, 

                  child:  Text('Daftar', style: button_t),
                    ),
                ),

            SizedBox(
                  
                  height: 12,
                ),                

                Container(
                    child: Row(
                      children: [
                        
                      GestureDetector(
                        onTap: () {
                    Get.to(login());
                  },
                        child: 
                        RichText(
        text: TextSpan(
          text: "Sudah mempunyai akun? ",
          style: Lightlogin,
          children: <TextSpan>[
            TextSpan(text: ' Masuk', style: DashLogin),
          ],
        ),
                        )
                      ),
                        
                        
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
            ],
            ),
    
            
          ),
        )));
    ;
  }
}