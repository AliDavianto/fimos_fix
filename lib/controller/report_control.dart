import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../controller/suplai_control.dart';
import '../controller/suplaicontroller.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../controller/laporanTerbaruController.dart';
class AddLaporanControl extends GetxController{
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference control = FirebaseFirestore.instance.collection('laporanControl');
  final lv =Get.put(LaporanVar());

  AddLaporan(){
    lv.listenToData();
  }

  Future<void> addlaporansuplai(a,b,c,d) {
    var kuantitasvalue =   lv.kuantitas.toInt();  
    var idLaporanvalue = lv.id_laporan.toInt(); 
    return control    
      .doc('prime')
      .update({
        'id_laporan' : idLaporanvalue + 1,
        'id_pakan' : a,
        'jenis_laporan' : "Pemakaian Pakan",
        'jenis_pakan' : b,
        'kuantitas_pakan' : kuantitasvalue + c,
        'tgl_laporan' : d,
        })
      .then((value) => print("Laporan Updated"))  
      .catchError((error) => print("Failed to update Laporan: $error"));    
  }

    Future<void> addlaporanfeeding(a,b,c,d) {
    var kuantitasvalue =   lv.kuantitas.toInt();  
    var idLaporanvalue = lv.id_laporan.toInt(); 
    return control    
      .doc('prime')
      .update({
        'id_laporan' : idLaporanvalue + 1,
        'id_pakan' : a,
        'jenis_laporan' : "Penambahan Pakan",
        'jenis_pakan' : b,
        'kuantitas_pakan' : kuantitasvalue + c,
        'tgl_laporan' : d,
        })
      .then((value) => print("Laporan Updated"))  
      .catchError((error) => print("Failed to update Laporan: $error"));    
  }
}
class ReportSuplaiControl extends GetxController{
//var buat laporan homepage admin
  var jenis =  "null".obs;
  var id = "0".obs;
  var kuantitas = "null".obs;
  var id_laporan = 0.obs;
  var tgl_laporan = "null".obs;
  var jenis_laporan = "null".obs;

//var buat laporan hal report pemakaian
  var jenis1 =  "null".obs;
  var id1 = "0".obs;
  var kuantitas1 = "null".obs;
  var id_laporan1 = 0.obs;
  var id_laporanR1 = 0.obs;
  var tgl_laporan1 = "null".obs;
  var jenis_laporan1 = "null".obs;

  //var buat laporan hal report penambahan
  var jenis2 =  "null".obs;
  var id2 = "0".obs;
  var kuantitas2 = "null".obs;
  var id_laporanR2 = 0.obs;
  var id_laporan2 = 0.obs;
  var tgl_laporan2 = "null".obs;
  var jenis_laporan2 = "null".obs;



    void reportSuplai(x,y,z,s) {


    if (y == "1"){
        var  kuantitasPakan = x.toString();

        jenis.value = "Konsentrart";
        jenis_laporan.value = "Penambahan Pakan";
        id.value = "1";
        kuantitas.value = kuantitasPakan;
        tgl_laporan.value = z;
        id_laporan + 1;

    //report page var
        jenis2.value = "Konsentrart";
        jenis_laporan2.value = "Penambahan Pakan";
        id2.value = "1";
        kuantitas2.value = kuantitasPakan;
        tgl_laporan2.value = z;
        id_laporan2  ;       
        id_laporanR2 = s + 1;
        
        
        
        

    } else {
         var  kuantitasPakan = x.toString();
        jenis.value = "Hijauan";
        jenis_laporan.value = "Penambahan Suplai";
        id.value = "2";
        kuantitas.value = kuantitasPakan;
        tgl_laporan.value = z;
        id_laporan + 1;

        //var report page
        jenis2.value = "Hijauan";
        jenis_laporan2.value = "Penambahan Suplai";
        id2.value = "2";
        kuantitas2.value = kuantitasPakan;
        tgl_laporan2.value = z;
        id_laporan2 +  1;
        id_laporanR2 = s + 1;
    }
  }







    void reportPemakaian(x,y,z,s) {
    if (y == "1"){
        var  kuantitasPakan = x.toString();

        jenis.value = "Konsentrart";
        jenis_laporan.value = "Pemakaian Pakan";
        id.value = "1";
        kuantitas.value = kuantitasPakan;
        tgl_laporan.value = z;
        id_laporan + 1;

        //report page var
        jenis1.value = "Konsentrart";
        jenis_laporan1.value = "Pemakaian Pakan";
        id1.value = "1";
        kuantitas1.value = kuantitasPakan;
        tgl_laporan1.value = z;
        id_laporan1 ; 
        id_laporanR1 =s + 1;
              

    } else {
         var  kuantitasPakan = x.toString();
        jenis.value = "Hijauan";
        jenis_laporan.value = "Pemakaian Pakan";
        id.value = "2";
        kuantitas.value = kuantitasPakan;
        tgl_laporan.value = z;
        id_laporan + 1;

        //var report pemakaian
        jenis1.value = "Hijauan";
        jenis_laporan1.value = "Pemakaian Pakan";
        id1.value = "2";
        kuantitas1.value = kuantitasPakan;
        tgl_laporan1.value = z;
        id_laporan1 + 1;
        id_laporanR1 = s + 1;

    }
  }
}