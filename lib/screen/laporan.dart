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

void main() => runApp(report());

class report extends StatelessWidget {
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
                                                Text("Hai Suryano",
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
            child:  Image.asset('assets/images/settings_bg.png'),
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

              SizedBox(height: 32,),

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
                                        Navigator.of(context).push(
                      MaterialPageRoute(
                      builder: (context) {
                        return Signup();
                        },
                      ),
                    );  
                  },
                  
                  child:  Text('Lihat Semua Laporan', style: button_t),
                    ),
                ),
 //akhir widget            
            ],
          )
        )));
    ;
  }
}

