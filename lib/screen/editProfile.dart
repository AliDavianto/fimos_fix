import 'package:file_picker/file_picker.dart';
import 'package:fimos_fix/controller/profile.dart';
import 'package:flutter/material.dart';
import '../styleguide/font_style.dart';
import '../controller/suplai_control.dart';
import '../controller/suplaicontroller.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import '../CRUD/crud_auth_login.dart';
import 'dart:ffi';
import '../controller/globals.dart';
import '../controller/report_control.dart';
import '../CRUD/report_crud.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'suplai.dart';


//jika error ganti Get.put(SuplaiController()); ke Get.put(suplaicontrol());
void main() => runApp(editProfile());

AuthController authController = AuthController.instance;
final Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp();

FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
FirebaseAuth firebaseAuth = FirebaseAuth.instance;

class editProfile extends StatelessWidget {


  final user = FirebaseAuth.instance.currentUser;
  final username = TextEditingController();
  final email = TextEditingController();
  final image = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final log = Get.put(AuthController());
  final uc = Get.put(UserControl());
  final storage =  Get.put(Storage());

 
  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',
      theme:  ThemeData(scaffoldBackgroundColor: const Color(0xFFF6F6F6)),
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
          //color for header
          //color: darkGreen,
          child: Row(crossAxisAlignment: 
           CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [

             Container(
              width: 44,
              height: 44,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: darkGreen,
              ),

              child: CircleAvatar(
                
                    backgroundImage: NetworkImage("${uc.user?.photoURL}")
                    //AssetImage('assets/images/profile_bg.png'),
                    
                    )
                        ),
               Padding(
                                          padding: EdgeInsets.only(left: 12,top: 6),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                   MainAxisAlignment.start,
                                              children: [
                                                Text("Hai ${uc.user?.displayName}",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: Paragraph),
                                                Padding(
                                                    padding: EdgeInsets.only(top: 6, bottom: 6),
                                                    child: Text("id 001",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: regular_small)),
                                              ]
                                              )),

                                             
          SizedBox(width:155 ,),      
        Container(
            width: 44,
            height: 44,
            child: GestureDetector(
                        onTap: () { 
                          log.logout();
                          },
                        child: const Icon(Icons.logout),
                        //Image.asset('assets/images/settings_bg.png'),
                        
                      ),
             
          ) ,                      
            ],
          ),
         ),
//body 
        SizedBox(
        height: 35,
        ),       

        Container(
              width: 100,
              height: 100,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: darkGreen,
              ),

              child: GestureDetector(
          onTap: () async {
            // Execute some code when the image is tapped
            //Get.to(() => suplai());
            final results = await FilePicker.platform.pickFiles(
              allowMultiple: false,
              type: FileType.custom,
              allowedExtensions: ['png','jpg','jpeg']
            );

            if (results == null ) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Tidak ada file yang diplih'),
                  ),
              );
              return null;
            }
            final path = results.files.single.path!;
            final filename = results.files.single.name;

            storage.uploadFile(path, filename).then((value) => print('berhasil'));
          },
          child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile_bg.png'),
                    ),
              
              
                        ),

        ),
        SizedBox(
        height: 28,
        ),
  
            Container(
                
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ubah Username",style: label,),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                  height: 40,
                  width: 315,
                        child: TextField(  
                    controller: username , 
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                      hintText: "Dodi",hintStyle:hint ,
                      
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
                      Text("Ubah Email",style: label,),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                  height: 40,
                  width: 315,
                        child: TextField(    
                    controller: email , 
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                      hintText: "dodi@gmail.com",hintStyle:hint ,
                      
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
                  height: 36, // <-- Your height
                  child: TextButton(
                      
                    style: TextButton.styleFrom(
                    foregroundColor: Color(0xFFFFFFFF),
                    backgroundColor: Color(0xFF307A59),
                    textStyle: const TextStyle(fontSize: 20),
                    shape:  RoundedRectangleBorder(borderRadius:  BorderRadius.circular(10.0)),
                    
                  ),
                  onPressed: () async {
                    
                    await user?.updateEmail(email.text);
                    await user?.updateDisplayName(username.text);

                    

                    Get.snackbar('Perubahan Berhasil', 'Silahakn Login Ulang',
                      backgroundColor: white,
                      duration: Duration(seconds: 5),
                      );
                    
                    // if ( user?.displayName ==  username.text){
                      
                    // }
                  }, 
                  
                  child:  Text('Update Profile ', style: button_t),
                    ),
                ),

              
            ],
          )
        )));
    
  }
  
}

