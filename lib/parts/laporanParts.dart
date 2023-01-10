  import 'package:flutter/material.dart';
  import '../styleguide/font_style.dart';
  import 'package:get/get.dart';
  import '../controller/report_control.dart';

  class LaporanParts extends StatelessWidget {
    LaporanParts({super.key});

    final rc =Get.put(ReportSuplaiControl(),permanent: true);

    @override
    Widget build(BuildContext context) {
      return Container(child: Column(
        children: [
            Container(
                  
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Laporan Penambahan Pakan",style: label,),
                        SizedBox(
                          height: 12,
                        ),
                        
                        Container(
                          height: 200,
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
                          height: 200,
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

          