import 'dart:ui';
import '../controller/reportController.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../styleguide/font_style.dart';
import 'package:get/get.dart';
import '../CRUD/crud_auth_login.dart';
import 'package:get/get.dart';
import 'package:fimos_fix/parts/header.dart';
import '../parts/laporanParts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'header.dart';

class reportStreaming extends StatelessWidget {
  final log = Get.put(AuthController());
  final rc = Get.put(reportController());

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.only(top: 12.0,left: 6.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Header(),
          Container(

            child: StreamBuilder<QuerySnapshot>(
              stream: rc.streamdata(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.active) {
                  var ListAllDocs = snapshot.data!.docs;

                  return Expanded(
                    child: ListView.builder(
                      itemCount: ListAllDocs.length,
                      itemBuilder: (context, index) => Card(
                        margin: EdgeInsets.all(8),
                        //elevation: 8,
                        child: Container(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Container(
                                margin: EdgeInsets.only(top: 13.0, left:14.0),
                                child: Row(
                                children: [
                                    Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                              Text("Id Laporan      : ${ListAllDocs[index].get('id_laporan')}", style: Paragraph),
                              SizedBox(height: 12),
                              Text("Id Pakan        : ${ListAllDocs[index].get('id_pakan')}", style: Paragraph),
                              SizedBox(height: 12),
                              Text("Jenis Laporan   : ${ListAllDocs[index].get('jenis_laporan')}", style: Paragraph),
                              SizedBox(height: 12),
                              Text("Jenis Pakan     : ${ListAllDocs[index].get('jenis_pakan')}", style: Paragraph),
                              SizedBox(height: 12),
                              Text("Kuantitas Pakan : ${ListAllDocs[index].get('kuantitas_pakan')}", style: Paragraph),
                              SizedBox(height: 12),
                              //Text("Tgl Laporan     : ${ListAllDocs[index].get('tgl_laporan')}", style: Paragraph),      
                                  ],
                                ),
                              )
                                ],
                              ),
                              
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }
                return Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ],
      ),
    );
  }
}

//buat tutorial cara stream data real time bisa cek youtube kuldii project firebase playlist video firestore 