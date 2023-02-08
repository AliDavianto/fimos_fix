import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../controller/suplai_control.dart';
import '../controller/suplaicontroller.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class reportController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot> getData() async {
    CollectionReference report = firestore.collection('laporan');
    return report.get();
  }

  Stream<QuerySnapshot> streamdata(){
    CollectionReference report = firestore.collection('laporan');
    return report.snapshots();
  }
}
