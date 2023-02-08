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

  Future<void> addhijauan(b) {
    var hijauanintValue =   ac.hijauan.toInt();  
    return control    
      .doc('Prime')
      .update({
        'Hijauan' : hijauanintValue + b,
        })
      .then((value) => print("Hijauan Updated"))  
      .catchError((error) => print("Failed to update Control: $error"));    
  }

    Future<void> addkonsentrat(a) {
    var konsentratintValue =   ac.konsentrat.toInt(); 
    return control    
      .doc('Prime')
      .update({
        'Konsentrat':  konsentratintValue + a,
        })
      .then((value) => print("Konsentrat Updated"))  
      .catchError((error) => print("Failed to update Control: $error"));    
  }

  Future<void> usedkonsentrat(c) {
    var konsentratintValue =   ac.konsentrat.toInt(); 
    var usedintValue =   ac.used.toInt(); 
    return control    
      .doc('Prime')
      .update({
        'Konsentrat':  konsentratintValue - c,
        'Used' : usedintValue + c,
        })
      .then((value) => print("Used Updated"))  
      .catchError((error) => print("Failed to update Control: $error"));
  }

  
  Future<void> usedhijauan(c) {
    var hijauanintValue =    ac.hijauan.toInt(); 
    var usedintValue =   ac.used.toInt(); 
    print(c);
    return control    
      .doc('Prime')
      .update({
        'Hijauan':  hijauanintValue - c,
        'Used' : usedintValue + c,
        })
      .then((value) => print("Used Updated"))  
      .catchError((error) => print("Failed to update Control: $error"));
  }

  //   Future<void> addused(c) {
  //   var hijauanintValue =   ac.hijauan.toInt();  
  //   var konsentratintValue =   ac.konsentrat.toInt(); 
  //   var usedintValue =   ac.used.toInt(); 
  //   return control    
  //     .doc('Prime')
  //     .update({
  //       'Konsentrat':  konsentratintValue - c,
  //       'Used' : usedintValue + c,
  //       })
  //     .then((value) => print("Used Updated"))  
  //     .catchError((error) => print("Failed to update Control: $error"));
  // }
}


class SuplaiController extends GetxController{
  final cc =  Get.put(AddSuplaiControl());
   final ac =Get.put(Cardvar());
  // num konsentrart =  0;
  // num hijauan = 0;
  // num used = 0;

  
//  void suplaikontrol(int konsentrart,int hijauan,int used){

//     cc.addcontrolsuplai(konsentrart, hijauan, used);
   
//   }
 void increment(num x, String y) {
        if (y == "1") {
        //konsentrart += x;
        cc.addkonsentrat(x);
        } else {
        //hijauan += x;
         cc.addhijauan(x);
    }
    }
  void decrement(x,y) {
    if (y == "1"){
      
      print("id adalah " +y);
      cc.usedkonsentrat(x);
        //konsentrart -= x;
    } else {
      print(x);
      cc.usedhijauan(x);
    }
    

  }
 }

