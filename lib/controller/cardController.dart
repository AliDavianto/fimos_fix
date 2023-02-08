import 'dart:ffi';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class CardDataController extends GetxController{  
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  StreamController<QuerySnapshot<Object?>> _dataController = StreamController<QuerySnapshot<Object?>>.broadcast();
  Stream<QuerySnapshot<Object?>> get dataStream => _dataController.stream;

  Future<QuerySnapshot<Object?>> getData() async {
    CollectionReference report = firestore.collection('SuplaiControl');
    return report.get();
  }

  void listenToData() {
    CollectionReference report = firestore.collection('SuplaiControl');
    report.snapshots().listen((data) {
      _dataController.add(data);
    });
  }
}

class Cardvar extends GetxController {
  final hijauan = 0.obs;
  final konsentrat = 0.obs;
  final used = 0.obs;

  
  Cardvar(){
    listenToData();
  }
  void listenToData() {
    FirebaseFirestore.instance.collection("SuplaiControl").snapshots().listen((snapshot) {
      snapshot.docs.forEach((doc) {
       if(doc.data() != null) {
        if(doc.data().containsKey("Hijauan")) hijauan.value = doc.data()["Hijauan"];
        if(doc.data().containsKey("Konsentrat")) konsentrat.value = doc.data()["Konsentrat"];
        if(doc.data().containsKey("Used")) used.value = doc.data()["Used"];
        }

      });
    });
  }
}



// class Cardvar extends GetxController{
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//   CollectionReference control = FirebaseFirestore.instance.collection('SuplaiControl');
//   final cardData = Rx<Map<String, dynamic>>({});
//   late  Map<String, dynamic> data  ;
//   var hijauan,  konsentrat , used;

  
//   void init() {
//     control.snapshots().listen((snapshot) {
//       if (snapshot.docs.isNotEmpty) {
//         data = snapshot.docs.first.data() as Map<String, dynamic>;
//         hijauan = data['Hijauan'];
//         konsentrat = data['Konsentrat'];
//         used = data['Used'];
//         cardData.value = data;
//       }
//     });

 
//   }
// }