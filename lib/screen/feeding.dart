import 'package:flutter/material.dart';
import '../main.dart';
import '../styleguide/font_style.dart';
import 'splashscreen.dart';
import 'signup.dart';
import 'dart:ffi';

import 'home_admin.dart';
//import 'laporan.dart';
void main() => runApp(feeding());

class feeding extends StatelessWidget {
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

                    Text("300kg",
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

                    Text("300kg",
                    style: details,
                    textAlign: TextAlign.center,)
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

                    Text("300kg",
                    style: details,
                    textAlign: TextAlign.center,),

                    
                  ],
                ),               
              ),
            

            
            ],
          ),
         ),
        SizedBox(height:42 ,),

        Container(
                
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("jenis Pakan",style: label,),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                  height: 40,
                  width: 315,
                        child: TextField(
                        
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                      
                    ),
                  ),
                      )
                      
                    ],
                  )
              ),

         SizedBox(height:16 ,),

         Container(
                
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Kuantitas Pakan",style: label,),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                  height: 40,
                  width: 315,
                        child: TextField(
                        
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                      
                    ),
                  ),
                      )
                      
                    ],
                  )
              ),

             SizedBox(height:16 ,),

        Container(
                
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tanggal Pakan Digunakan",style: label,),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                  height: 40,
                  width: 315,
                        child: TextField(
                        
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                      
                    ),
                  ),
                      )
                      
                    ],
                  )
              ),

            SizedBox(height:32 ,),

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
                                        Navigator.of(context).pop(
                      MaterialPageRoute(
                      builder: (context) {
                        return Homepage();
                        },
                      ),
                    );  
                  },
                  
                  child:  Text('Beri Makan', style: button_t),
                    ),
                ),
              
            ],
          )
          
        )));
    ;
  }
}

