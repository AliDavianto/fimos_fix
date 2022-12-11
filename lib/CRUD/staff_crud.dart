import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import '../models/response.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _Collection =  _firestore.collection('staff');

class printstaffData {


  static Stream<QuerySnapshot> readstaff() {
    CollectionReference notesItemCollection =
        _Collection;
    return notesItemCollection.snapshots();
  

  }
  void  getstaff (){
  FirebaseFirestore.instance
  .collection('staff')
  .where('uid', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
  .get()
  .then((value) {
    value.docs.forEach((element) {
      print(element.id);
    });
  });

  
}
} 

