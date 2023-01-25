import 'dart:developer';
import 'dart:ffi';
import 'package:get/get.dart';



class SuplaiController extends GetxController{
  var counter =  0.obs;
  var hijauan = 0.obs;
  var used = 0.obs;
  void increment(x,y) {
    if (y == "1"){
        counter + x;
    } else {
        hijauan + x;
    }
  }
  void decrement(x,y) {
    if (y == "1"){
        counter - x;
    } else {
        hijauan - x;
    }
    
    used + x;
  }
 }
