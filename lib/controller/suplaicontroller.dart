import 'dart:developer';
import 'dart:ffi';
import 'package:get/get.dart';
import 'cardController.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddSuplaiControl extends GetxController{
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference control = FirebaseFirestore.instance.collection('SuplaiControl');
  final ac =Get.put(Cardvar());

  AddSuplaiControl(){
    ac.listenToData();
  }
  Future<void> addcontrolsuplai(a,b,c) {
     print("berhasil");
    var konsentratintValue =   ac.konsentrat.toInt(); 
    var hijauanintValue =   ac.hijauan.toInt(); 
    var usedintValue =   ac.used.toInt(); 

    // var aValue =   a.value(); 
    // var bValue =   b.value(); 
    // var cValue =   c.value(); 
    return control    
      .doc('Prime')
      .update({
        'Konsentrat':  konsentratintValue + a,
        'Hijauan' : hijauanintValue + b,
        'Used' : usedintValue + c,
        })
      .then((value) => print("Control Updated"))  
      .catchError((error) => print("Failed to update Control: $error"));
      
  }
}


class SuplaiController extends GetxController{
  final cc =  Get.put(AddSuplaiControl());
   final ac =Get.put(Cardvar());
  var konsentrart =  0.obs;
  var hijauan = 0.obs;
  var used = 0.obs;

  void suplaikontrol(konsentrart,hijauan,used){

    cc.addcontrolsuplai(konsentrart, hijauan, used);
   
  }
  void increment(x,y) {
    if (y == "1"){
        konsentrart + x;
    } else {
        hijauan + x;      
    }
  }
  void decrement(x,y) {
    if (y == "1"){
        konsentrart - x;
    } else {
        hijauan - x;
    }
    
    used + x;
  }
 }

