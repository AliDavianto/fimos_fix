import 'dart:ui';
import 'suplai.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../styleguide/font_style.dart';
import 'splashscreen.dart';
import 'signup.dart';
import 'home_staff.dart';
import 'feeding.dart';
import 'package:get/get.dart';
import '../CRUD/crud_auth_login.dart';
import 'package:get/get.dart';

void main() => runApp(report());

class report extends StatelessWidget {
    final log = Get.put(AuthController());

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
                
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Laporan Penambahan Pakan",style: label,),
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
                                  
                                  //Obx (() => Text ("${rc.id_laporan}",style: laporan,)), 

                                  SizedBox(
                                    width: 230 - 44,
                                  ),

                                   //Obx (() => Text ("${rc.tgl_laporan.value}",style: laporan,)), 
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
                                  Obx (() => Text ("Id Laporan : ${rc.id_laporanR2}",style: Paragraph,)), 
                                   SizedBox(height:12 ,),
                                  Obx (() => Text ("Tanggal Laporan : ${rc.tgl_laporan2.value}",style: Paragraph,)), 
                                   SizedBox(height:12 ,),
                                  Obx (() => Text ("Jenis Laporan : ${rc.jenis_laporan2.value}",style: Paragraph,)),                                
                                  SizedBox(height:12 ,),
                                  Obx (() => Text ("Jenis Pakan : ${rc.jenis2.value}",style: Paragraph,)),                                
                                  SizedBox(height:12 ,),
                                  Obx (() => Text ("Kuantitas Pakan : ${rc.kuantitas2.value}",style: Paragraph,)),        
                                  SizedBox(height:12 ,),
                                  Obx (() => Text ("ID Pakan : ${rc.id2.value}",style: Paragraph,)),        
                                  // SizedBox(height:12 ,),
                                  // Text("Kuantitas Ternak : 20  ",style: Paragraph,),
                                  // SizedBox(height:12 ,),
                                  // Text("Konsumsi Pakan : 1220 Kg  ",style: Paragraph,),
                                  // SizedBox(height:12 ,),
                                  // Text("Staff : Suryano  ",style: Paragraph,),
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

                SizedBox(
                      height: 35,
                      ),      

               Container(
                
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Laporan Pemakaian Pakan",style: label,),
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
                                  
                                  //Obx (() => Text ("${rc.id_laporan}",style: laporan,)), 

                                  SizedBox(
                                    width: 230 - 44,
                                  ),

                                   //Obx (() => Text ("${rc.tgl_laporan.value}",style: laporan,)), 
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
                                  Obx (() => Text ("Id Laporan : ${rc.id_laporanR1}",style: Paragraph,)), 
                                   SizedBox(height:12 ,),
                                  Obx (() => Text ("Tanggal Laporan : ${rc.tgl_laporan1.value}",style: Paragraph,)), 
                                   SizedBox(height:12 ,),
                                  Obx (() => Text ("Jenis Laporan : ${rc.jenis_laporan1.value}",style: Paragraph,)),                                
                                  SizedBox(height:12 ,),
                                  Obx (() => Text ("Jenis Pakan : ${rc.jenis1.value}",style: Paragraph,)),                                
                                  SizedBox(height:12 ,),
                                  Obx (() => Text ("Kuantitas Pakan : ${rc.kuantitas1.value}",style: Paragraph,)),        
                                  SizedBox(height:12 ,),
                                  Obx (() => Text ("ID Pakan : ${rc.id1.value}",style: Paragraph,)),        
                                  // SizedBox(height:12 ,),
                                  // Text("Kuantitas Ternak : 20  ",style: Paragraph,),
                                  // SizedBox(height:12 ,),
                                  // Text("Konsumsi Pakan : 1220 Kg  ",style: Paragraph,),
                                  // SizedBox(height:12 ,),
                                  // Text("Staff : Suryano  ",style: Paragraph,),
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

