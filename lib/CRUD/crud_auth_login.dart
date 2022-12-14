import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import '../models/response.dart';
import '../screen/signup.dart';
import '../screen/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'dart:developer';
import '../screen/home_staff.dart';
import '../models/datacollection.dart';
import '../models/response.dart';


AuthController authController = AuthController.instance;
final Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp();

FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
FirebaseAuth firebaseAuth = FirebaseAuth.instance;

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  
  void loginstaff(String email, String password) async {
          
 try { 
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    
    email: email,
    password: password
    
  );
} on FirebaseAuthException  catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  } 
  
  //  FirebaseAuth.instance
  // .idTokenChanges()
  // .listen((User? user) {
  //   if (user == null) {
  //     print('User is currently signed out!');
  //   } else {
  //     Get.to(() => home_staff()); 
  //     print('User is signed in!');
  //     print(AsyncSnapshot);
  //   }
    
       
   
    
  // });

}


} 

void logout() async{
  final user = FirebaseAuth.instance.currentUser;
  await FirebaseAuth.instance.signOut();
   Get.to(() => login());

FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User ini masuk !');
      Get.to(() => home_staff()); 
    }
  });
  
}

void signup(String email, String password, String displayName) async{
  
  await FirebaseAuth.instance.signOut();
  try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
   
  );
} on FirebaseAuthException catch (e) {

 if (e.code == 'weak-password') {
    print('The password provided is too weak.');
    
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  } 
  
} catch (e) {
  print(e);
      

} 
}


}

// class UserControl extends GetxController{
//   final user = FirebaseAuth.instance.currentUser;

// }