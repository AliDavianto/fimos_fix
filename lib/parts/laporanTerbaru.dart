 import 'package:flutter/material.dart';
import '../styleguide/font_style.dart';
import 'package:get/get.dart';
import '../controller/report_control.dart';
import '../controller/laporanTerbaruController.dart';

class LaporanTerbaru extends StatelessWidget {
   LaporanTerbaru({super.key});

  final rc =Get.put(ReportSuplaiControl(),permanent: true);
  final lv =  Get.put(LaporanVar());

  @override
  Widget build(BuildContext context) {
    lv.listenToData();

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
                                  Obx (() => Text (lv.id_laporan != null ? "ID Laporan  : ${lv.id_laporan}" : "Loading...",
                                  style: Paragraph,
                                  textAlign: TextAlign.center)),
                                   SizedBox(height:12 ,),
                                  Obx (() => Text (lv.tgl_laporan != null ? "Tanggal Laporan : ${lv.tgl_laporan}" : "Loading...",
                                  style: Paragraph,
                                  textAlign: TextAlign.center)),
                                   SizedBox(height:12 ,),
                                  Obx (() => Text (lv.jenis_laporan != null ? "Jenis Laporan : ${lv.jenis_laporan}" : "Loading...",
                                  style: Paragraph,
                                  textAlign: TextAlign.center)),                            
                                  SizedBox(height:12 ,),
                                  Obx (() => Text (lv.jenisPakan != null ? "Jenis Pakan : ${lv.jenisPakan}" : "Loading...",
                                  style: Paragraph,
                                  textAlign: TextAlign.center)),                              
                                  SizedBox(height:12 ,),
                                  Obx (() => Text (lv.kuantitas != null ? "Kuantitas Pakan : ${lv.kuantitas}" : "Loading...",
                                  style: Paragraph,
                                  textAlign: TextAlign.center)),   
                                  SizedBox(height:12 ,),
                                  Obx (() => Text (lv.idpakan != null ? "ID Pakan : ${lv.idpakan}" : "Loading...",
                                  style: Paragraph,
                                  textAlign: TextAlign.center)),        

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

        