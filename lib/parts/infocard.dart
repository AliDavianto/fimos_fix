import 'package:flutter/material.dart';
import '../styleguide/font_style.dart';
import 'package:get/get.dart';
import '../controller/suplaicontroller.dart';
import '../controller/cardController.dart';


class infoCard extends StatelessWidget {
   infoCard({super.key});
  final tbh = Get.put(SuplaiController(),permanent: true);
  final cc =  Get.put(Cardvar());
  @override
  Widget build(BuildContext context) {
    cc.listenToData();
    return Container(child: Row(
      children: [
           Container(
          margin: const EdgeInsets.only(left: 15.0),
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

                child:   Column(
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
                    Obx (() => Text (cc.hijauan != null ? "${cc.hijauan}kg" : "Loading...",
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
                child:    Column(
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

                    Obx (() => Text (cc.konsentrat != null ? "${cc.konsentrat}kg" : "Loading...",
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
                child:   Column(
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

                    Obx (() => Text (cc.used != null ? "${cc.used}kg" : "Loading...",
                    style: details,
                    textAlign: TextAlign.center)),
                  ],
                ),               
              ),

            ],
          ),
         ),
      ]
       
    ),);
  }
}

 
        