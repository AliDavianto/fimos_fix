import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import '../models/response.dart';
import '../screen/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';

//jika error copas ulang daru github
final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _Collection = _firestore.collection('staff');

class signupCrud {
  static Future<Response> addstaff({
    required String name,
    required String email,
    required String password,
    required String noHp, 

  }) async{
           
    
     Response response = Response();
    DocumentReference documentReferencer =
        _Collection.doc();

    Map<String, dynamic> data = <String, dynamic>{
      
      "nama_staff": name,
      "email_staff": email,
      "nomorHp_staff" : noHp,
      "password_staff" : password,
      
    };

    

    var result = await documentReferencer
        .set(data)
        .whenComplete(() {

          response.code = 200;
          response.message = "Pendaftaran Sukses Silahkan Login";
          
          
        })
        .catchError((e) {
            response.code = 500;
            response.message = e;
        });
       
        return response;
       
  }

  static Future<Response> updatestaff ({
    required String name,
    required String email,
    required String password,
    required String noHp, 
    required String docId,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer =
    _Collection.doc();

    Map<String,dynamic> data = <String,dynamic>{
      "nama_staff": name,
      "email_staff": email,
      "nomorHp_staff" : noHp,
      "password_staff" : password,
    };

   await documentReferencer
        .update(data)
        .whenComplete(() {
           response.code = 200;
          response.message = "Sucessfully updated Employee";
        })
        .catchError((e) {
            response.code = 500;
            response.message = e;
        });

        return response;
  }

  static Stream<QuerySnapshot> readstaff() {
    CollectionReference notesItemCollection =
        _Collection;

    return notesItemCollection.snapshots();
  }

  static Future<Response> deletestaff({
    required String docId,
  }) async {

     Response response = Response();
    DocumentReference documentReferencer =
        _Collection.doc(docId);

    await documentReferencer
        .delete()
        .whenComplete((){
          response.code = 200;
        
        })
        .catchError((e) {
           response.code = 500;
            response.message = e;
        });

   return response;

   
 
  }
} 