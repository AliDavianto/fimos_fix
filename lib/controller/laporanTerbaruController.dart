import 'dart:ffi';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class LaporanTerbaruController extends GetxController{  
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  StreamController<QuerySnapshot<Object?>> _dataController = StreamController<QuerySnapshot<Object?>>.broadcast();
  Stream<QuerySnapshot<Object?>> get dataStream => _dataController.stream;

  Future<QuerySnapshot<Object?>> getData() async {
    CollectionReference report = firestore.collection('laporanControl');
    return report.get();
  }

  void listenToData() {
    CollectionReference report = firestore.collection('laporanControl');
    report.snapshots().listen((data) {
      _dataController.add(data);
    });
  }
}

class LaporanVar extends GetxController {
  final jenisPakan =  "null".obs;
  final idpakan = "0".obs;
  final kuantitas = 0.obs;
  final id_laporan = 0.obs;
  final tgl_laporan = "null".obs;
  final jenis_laporan = "null".obs;

  
  LaporanVar(){
    listenToData();
  }
  void listenToData() {
    FirebaseFirestore.instance.collection("laporanControl").snapshots().listen((snapshot) {
      snapshot.docs.forEach((doc) {
       if(doc.data() != null) {
        if(doc.data().containsKey("jenis_pakan")) jenisPakan.value = doc.data()["jenis_pakan"];
        if(doc.data().containsKey("id_pakan")) idpakan.value = doc.data()["id_pakan"];
        if(doc.data().containsKey("kuantitas_pakan")) kuantitas.value = doc.data()["kuantitas_pakan"];
        if(doc.data().containsKey("id_laporan")) id_laporan.value = doc.data()["id_laporan"];
        if(doc.data().containsKey("tgl_laporan")) tgl_laporan.value = doc.data()["tgl_laporan"];
        if(doc.data().containsKey("jenis_laporan")) jenis_laporan.value = doc.data()["jenis_laporan"];
        }

      });
    });
  }
}



