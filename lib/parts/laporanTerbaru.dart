 import 'package:flutter/material.dart';
import '../styleguide/font_style.dart';
import 'package:get/get.dart';
import '../controller/report_control.dart';

class LaporanTerbaru extends StatelessWidget {
   LaporanTerbaru({super.key});

  final rc =Get.put(ReportSuplaiControl(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return Container(child: Row(
      children: [
           Container(
                margin: const EdgeInsets.only(left: 15.0),
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
                                  

                                  SizedBox(
                                    width: 230 - 44,
                                  ),

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
                                  Obx (() => Text ("Id Laporan : ${rc.id_laporan}",style: Paragraph,)), 
                                   SizedBox(height:12 ,),
                                  Obx (() => Text ("Tanggal Laporan : ${rc.tgl_laporan.value}",style: Paragraph,)), 
                                   SizedBox(height:12 ,),
                                  Obx (() => Text ("Jenis Laporan : ${rc.jenis_laporan.value}",style: Paragraph,)),                                
                                  SizedBox(height:12 ,),
                                  Obx (() => Text ("Jenis Pakan : ${rc.jenis.value}",style: Paragraph,)),                                
                                  SizedBox(height:12 ,),
                                  Obx (() => Text ("Kuantitas Pakan : ${rc.kuantitas.value}",style: Paragraph,)),        
                                  SizedBox(height:12 ,),
                                  Obx (() => Text ("ID Pakan : ${rc.id.value}",style: Paragraph,)),        

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
 
      ]
       
    ),);
  }
}

        