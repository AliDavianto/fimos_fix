import 'dart:ui';
import 'package:get/get.dart';
import '../CRUD/crud_auth_login.dart';
import 'suplai.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../styleguide/font_style.dart';
import 'splashscreen.dart';
import 'signup.dart';
import 'home_staff.dart';
import 'feeding.dart';
import '../controller/suplaicontroller.dart';
import 'dart:ffi';

void main() => runApp(Homepage());

class Homepage extends StatelessWidget {
  final log = Get.put(AuthController());
  //final tbh = Get.put(SuplaiController());
  final tbh = Get.put(SuplaiController(),permanent: true);

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

             Container(
              width: 44,
              height: 44,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: darkGreen,
              ),

              child: CircleAvatar(
                
                    backgroundImage: AssetImage('assets/images/profile_bg.png'),
                    
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
                                                Text("Hai Ali",
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

                    Text("${tbh.hijauan}kg",
                    style: details,
                    textAlign: TextAlign.center,)

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

                    Text("${tbh.counter}kg",
                    style: details,
                    textAlign: TextAlign.center,)
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

                    Text("${tbh.used}kg",
                    style: details,
                    textAlign: TextAlign.center,)
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
                  
                  children: <Widget>[

                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                  width: 44,
                                  height: 44,
                                  decoration: new BoxDecoration(
                                  color: darkGreen,
                                  shape: BoxShape.circle,),
                                  child:  Image.asset('assets/images/suplai_bg-removebg-preview.png',height: 50, width: 50,),
                                  

                                    ),
                                  SizedBox(
                                  height: 8,),
                        GestureDetector(
                        onTap: () { 
                        Get.to(() => suplai()); 

                          },
                        child: Text("Suplai",style: dashboard,)
                        
                      ),
                                  ],
                                ),
                            ),

                                  SizedBox(
                                  width: 40,),

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

                             SizedBox(
                            width: 40,),

                            Container(
                                child: Column(
                                  children: [
                                    Container(
                                  width: 44,
                                  height: 44,
                                  decoration: new BoxDecoration(
                                  color: darkGreen,
                                  shape: BoxShape.circle,),
                                  child:  Image.asset('assets/images/laporan_bg-removebg-preview.png',height: 10, width: 10,),
                                  

                                    ),
                                  SizedBox(
                                  height: 8,),
                                      GestureDetector(
                                      onTap: () { 
                                  //       Navigator.of(context).push(
                                  //   MaterialPageRoute(
                                  //   builder: (context) {
                                  //     return report();
                                  //     },
                                  //   ),
                                  // );
                                        },
                                      child: Text("Laporan",style: dashboard,)
                                      
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
              )
            ],
          ),
          
         ),

        SizedBox(
        height: 16,
        ),  

      Container(
                
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Laporan Terbaru",style: label,),
                      SizedBox(
                        height: 12,
                      ),
                      
                      Container(
                        height: 228,
                        width: 332,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,),

                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 12.0, left:14.0),
                              child: Row(
                                
                                children: [
                                  
                                  Text("Id:411",style: laporan,),

                                  SizedBox(
                                    width: 230,
                                  ),

                                  Text("22/8/2022",style: laporan,),
                                ],
                              ),

                            ),
                            
                            
                            Container(
                              margin: EdgeInsets.only(top: 13.0, left:14.0),
                              child: Row(
                              children: [
                                  Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Jenis Pakan : Hijauan ",style: Paragraph,),
                                  SizedBox(height:12 ,),
                                  Text("Jenis Ternak : Kambing  ",style: Paragraph,),
                                  SizedBox(height:12 ,),
                                  Text("Bulan : Agustus  ",style: Paragraph,),
                                  SizedBox(height:12 ,),
                                  Text("Kuantitas Ternak : 20  ",style: Paragraph,),
                                  SizedBox(height:12 ,),
                                  Text("Konsumsi Pakan : 1220 Kg  ",style: Paragraph,),
                                  SizedBox(height:12 ,),
                                  Text("Staff : Suryano  ",style: Paragraph,),
                                ],
                              ),
                            )
                              ],
                            ),)
                          ],
                        ),   
                      ),
                      
                    ],
                  )
              ),

 //akhir widget            
            ],
          )
        )));
    ;
  }
}

