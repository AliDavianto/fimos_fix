import 'package:flutter/material.dart';
import '../main.dart';
import '../styleguide/font_style.dart';
import 'splashscreen.dart';
import '../CRUD/crud_auth_login.dart';
import 'package:get/get.dart';
import '../controller/suplaicontroller.dart';
import 'feeding.dart';
import 'editProfile.dart';

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
          //color: black,
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
                                                    
                                                 //Obx (() => Text("Hai ${uc.user?.displayName}",
                                                    // overflow:
                                                    //     TextOverflow.ellipsis,
                                                    // textAlign: TextAlign.left,
                                                    // style: Paragraph),), 

 
                                                // Text("Hai Suryano",
                                                //     overflow:
                                                //         TextOverflow.ellipsis,
                                                //     textAlign: TextAlign.left,
                                                //     style: Paragraph),
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

                                              
          SizedBox(width:100 ,),     

          DropdownButtonHideUnderline(
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
            ],
          ),
         ),
//review elements
        SizedBox(
        height: 35,
        ),       

         Container(
          width: 332,
          height: 126,
          

          child: Row(
            children: [
              
              Container(
                width: 100,
                height: 126,

                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                  Container(
                    width: 50,
                    height: 50,
                    child:
                    Image.asset('assets/images/grass_bg_remove.png'),
                  ),
                    

                  SizedBox(
                  height: 12,
                  ),

                    Text("Suplai Pakan        Hijaun",style: details_small,textAlign: TextAlign.center,),

                    SizedBox(
                      height: 8,
                    ),

                    Obx (() => Text ("${tbh.hijauan}kg",
                    style: details,
                    textAlign: TextAlign.center)),

                  ],
                ),
              ),  

                  SizedBox(
                  width: 16,
                  ),       

              Container(
                width: 100,
                height: 126,

                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                  Container(
                    width: 50,
                    height: 50,
                    child:
                    Image.asset('assets/images/konsentrat_bg-removebg-preview.png'),
                  ),

                  SizedBox(
                  height: 12,
                  ),

                    Text("Suplai Pakan Konsentrat",style: details_small,textAlign: TextAlign.center,),

                    SizedBox(
                      height: 8,
                    ),

                    Obx (() => Text ("${tbh.counter}kg",
                    style: details,
                    textAlign: TextAlign.center)),
                  ],
                ),                
              ),

                  SizedBox(
                  width: 16,
                  ),       
//dashboard
              Container(
                width: 100,
                height: 126,

                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                  Container(
                    
                    child:
                    Image.asset('assets/images/kambing_bg-removebg-preview.png',height: 50, width: 50,),
                  ),

                  SizedBox(
                  height: 12,
                  ),

                    Text("Pakan Yang Telah Terkonsumsi",style: details_small,
                    textAlign: TextAlign.center,
                    ),

                    SizedBox(
                      height: 8,
                    ),

                   Obx (() => Text ("${tbh.used}kg",
                    style: details,
                    textAlign: TextAlign.center)),
                  ],
                ),               
              ),

            ],
          ),
         ),

        SizedBox(
        height: 28,
        ),   

         Container(
           width: 332,
          height: 114,

                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,),          

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                
                width: 244,
                height: 70,
                color: white,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: <Widget>[

                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Container(
                          child: Column(
                            children: [
                      //         Container(
                      //           child: Column(
                      //             children: [
                      //               Container(
                      //             width: 44,
                      //             height: 44,
                      //             decoration: new BoxDecoration(
                      //             color: darkGreen,
                      //             shape: BoxShape.circle,),
                      //             child:  Image.asset('assets/images/suplai_bg-removebg-preview.png',height: 50, width: 50,),
                                  

                      //               ),
                      //             SizedBox(
                      //             height: 8,),
                      //   GestureDetector(
                      //   onTap: () { 
                         
                      //     },
                      //   child: Text("Suplai",style: dashboard,)
                        
                      // ),
                      //             ],
                      //           ),
                      //       ),

                                  SizedBox(
                                  width: 80,),

                            Container(
                                child: Column(
                                  children: [
                                    Container(
                                  width: 44,
                                  height: 44,
                                  decoration: new BoxDecoration(
                                  color: darkGreen,
                                  shape: BoxShape.circle,),
                                  child:  Image.asset('assets/images/gandum_bg-removebg-preview.png',height: 50, width: 50,),
                                  

                                    ),
                                  SizedBox(
                                  height: 8,),
                        GestureDetector(
                        onTap: () { 
                          Get.to(() => feeding()); 
                          },
                        child: Text("Beri makan",style: dashboard,)
                        
                      ),
                                  ],
                                ),
                            ),
                      


                            

                            ],
                          ),
                        )
                        


                    
                    ],
                    ),
                  ),
                    

                    
                  ],
                ),
              ),

              
            ],
          ),
          
         ),

        SizedBox(
        height: 16,
        ),  
        Container(child: Column(
          
        children: [
        SizedBox(height: 32,),
                  
                  
        ],
        ),)

              
            ],
        
          ),
        )));
    ;
  }
}