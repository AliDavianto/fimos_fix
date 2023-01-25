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

  Future<void> addreport(a,b,c,d,e,) {
     DocumentReference documentReferencer =
        _Collection.doc();

     var a = ch.id_laporan.value;
 
      var ac = a.toString();
      var xc = int.parse(ac);

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



