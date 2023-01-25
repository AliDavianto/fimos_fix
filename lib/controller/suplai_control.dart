import 'dart:ffi';
import '../screen/suplai.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import '../models/response.dart';
import 'package:firebase_auth/firebase_auth.dart';



final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _Collection = _firestore.collection('suplai');


class addsuplai {
   static Future<Response> addSuplai({
    required int kuantitas,
    required String jenis,
    required String idpakan,
    required DateTime tanggalDatang, 

    
  }) async{
           
    
     Response response = Response();
    DocumentReference documentReferencer =
        _Collection.doc();

    Map<String, dynamic> data = <String, dynamic>{
      
      "kuantitas_pakan": kuantitas,
      "jenis_pakan": jenis,
      "tgl_dtg" : tanggalDatang,
      "id_pakan" : idpakan,
      
    };

    

    var result = await documentReferencer
        .set(data)
        .whenComplete(() {

          response.code = 200;
          response.message = "Penambahan berhasil";
          
          
        })
        .catchError((e) {
            response.code = 500;
            response.message = e;
        });
       
        return response;
       
  }
}