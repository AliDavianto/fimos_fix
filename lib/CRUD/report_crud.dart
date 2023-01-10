import 'dart:ffi';
import 'package:flutter/rendering.dart';

import '../screen/laporan.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import '../models/response.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../controller/report_control.dart';
import '../screen/feeding.dart';
import 'package:get/get.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _Collection = _firestore.collection('laporan');


class addLaporan{

    final ch= Get.put(ReportSuplaiControl());

  //  static Future<Response> addlaporan({

  //   required int kuantitasL,
  //   required String jenis,
  //   required String jenisLaporan, 
  //   required String idpakan,
  //   required int idLaporan,
  //   required DateTime tanggalDatang, 
  //   //required DateTime tanggalExp, 
    
  // }) async{
           
    
  //    Response responseL = Response();
  //   DocumentReference documentReferencer =
  //       _Collection.doc();

  //   Map<String, dynamic> data = <String, dynamic>{
      
  //     "kuantitas_pakan": kuantitasL,
  //     "jenis_pakan": jenis,
  //     "jenis_laporan": jenisLaporan,
  //     "tgl_laporan" : tanggalDatang,
  //     "id_pakan" : idpakan, 
  //     "id_laporan" : idLaporan, 
  //   };

    

  //   var result = await documentReferencer
  //       .set(data)
  //       .whenComplete(() {

  //         responseL.code = 200;
  //         responseL.message = "Laporan telah dibuat";
          
          
  //       })
  //       .catchError((e) {
  //           responseL.code = 500;
  //           responseL.message = e;
  //       });
       
  //       return responseL;
       
  // }

  Future<void> addreport(a,b,c,d,e,) {
     DocumentReference documentReferencer =
        _Collection.doc();

     var a = ch.id_laporan.value;
    //  var as =0.obs;
    
    //  //var az = (as + 1).obs;
    //  //print(az);
    //  as + 1;
      var ac = a.toString();
      var xc = int.parse(ac);
          //print(az);
    print(a);
    print(ac);
     print(xc);

      return documentReferencer
          .set({
      "kuantitas_pakan": a,
      "jenis_pakan": b,
      "jenis_laporan": c,
      "tgl_laporan" : d,
      "id_pakan" : e,
      "id_laporan" : a,
          })
          .then((value) => print("Data Added"))
          .catchError((error) => print("Failed to add data: $error"));
    }
}



