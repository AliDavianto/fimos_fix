import 'dart:developer';
import 'dart:ffi';
import 'package:get/get.dart';



//jika error hapus file ini
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
//  int tambah(String x){
  
//   var  kuantitasPakan = int.parse(x);
//   var su = kuantitasPakan.obs;
//   var total = 0.obs;
//   var totalSuplai = ( su.value + total.value).obs;
  
//   var counter = (totalSuplai.value).obs ;
//   return counter.toInt();
  
 
// } 





// class IniSuplai extends GetxController {
//  void penambahan (){
//   var ttl = 0;
//  var sc = SuplaiController();
 

//  }

// }