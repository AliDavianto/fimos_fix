import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../controller/suplai_control.dart';
import '../controller/suplaicontroller.dart';
import 'package:flutter/material.dart';
class ReportSuplaiControl extends GetxController{

  var jenis =  "null".obs;
  var id = "0".obs;
  var kuantitas = "null".obs;
  var id_laporan = 0.obs;
  var tgl_laporan = "null".obs;
  var jenis_laporan = "null".obs;


  
    void reportSuplai(x,y,z) {
    if (y == "1"){
        var  kuantitasPakan = x.toString();
        jenis.value = "Konsentrart";
        jenis_laporan.value = "Penambahan Suplai";
        id.value = "1";
        kuantitas.value = kuantitasPakan;
        tgl_laporan.value = z;
        id_laporan + 1;
    } else {
         var  kuantitasPakan = x.toString();
        jenis.value = "Hijauan";
        jenis_laporan.value = "Penambahan Suplai";
        id.value = "2";
        kuantitas.value = kuantitasPakan;
        tgl_laporan.value = z;
        id_laporan + 1;
    }
  }
    void reportPemakaian(x,y,z) {
    if (y == "1"){
        var  kuantitasPakan = x.toString();
        jenis.value = "Konsentrart";
        jenis_laporan.value = "Pemakaian Pakan";
        id.value = "1";
        kuantitas.value = kuantitasPakan;
        tgl_laporan.value = z;
        id_laporan + 1;
    } else {
         var  kuantitasPakan = x.toString();
        jenis.value = "Hijauan";
        jenis_laporan.value = "Pemakaian Pakan";
        id.value = "2";
        kuantitas.value = kuantitasPakan;
        tgl_laporan.value = z;
        id_laporan + 1;
    }
  }
}