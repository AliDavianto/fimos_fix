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
      
      margin: const EdgeInsets.only(top: 12.0,left: 15.0),
      child: Column(
        
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Header(),
        Container( 
          child: StreamBuilder<QuerySnapshot<Object?>>(
        stream: rc.streamdata(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            
          var ListAllDocs = snapshot.data!.docs;
          
          return Expanded(child:  ListView.builder(
            
            itemCount: ListAllDocs.length,
            itemBuilder: (context, index) => ListTile(
              
                title: Text("${ListAllDocs[index].get('id_laporan',)}"),
                
                subtitle: Text("id laporan ${ListAllDocs[index].id}"),

            ),
            )
            );
         
        }
          return Center(child: CircularProgressIndicator(),);
        }
      )
),
         
            

    


      ],
    ),);
  }
}





