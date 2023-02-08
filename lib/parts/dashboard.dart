import 'package:flutter/material.dart';
import '../screen/feeding_admin.dart';
import '../screen/suplai.dart';
import '../screen/laporan.dart';
import '../styleguide/font_style.dart';
import 'package:get/get.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15.0),
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
                        InkWell(
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
                          Get.to(() => feedingadmin()); 
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
                                 Get.to(() => report()); 

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


      ],
    ),);
  }
}
