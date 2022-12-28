import 'dart:io';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:cloud_firestore/cloud_firestore.dart' ;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_auth/firebase_auth.dart';


class Storage {
final firebase_storage.FirebaseStorage storage = 
  firebase_storage.FirebaseStorage.instance;
final user = FirebaseAuth.instance.currentUser;
  Future<void> uploadFile(
    String filePath,
    String filename,
  ) async{
    File file = File(filePath);
    
    try {
      await storage.ref('test/$filename').putFile(file);
      String downloadURL = await storage.ref('test/$filename').getDownloadURL();
    await user?.updatePhotoURL(downloadURL);
    } on firebase_core.FirebaseException catch(e){
      print(e);
    }
  }

  Future<firebase_storage.ListResult> listFiles() async {
    firebase_storage.ListResult results = await storage.ref('test').listAll();
    results.items.forEach((firebase_storage.Reference ref) {
      print('Found file: $ref');
     });

     return results;
  }
  Future<String> downloadURL (String imageName) async{
    String downloadURL = await storage.ref('test/$imageName').getDownloadURL();
    await user?.updatePhotoURL(downloadURL);
    return downloadURL;
  }
}



// FutureBuilder(
//   future: storage.listFiles(),
//   builder: (BuildContext context, AsyncSnapshot<firebase_storage.ListResult> snapshot{
//     if (snapshot.connectionState == ConnectionState.done && 
//     snapshot.hasdata ) {
//       return container(
//         child: ListView.builder(
//           itemCount: snapshot.data!.items.length,
//           itemBuilder: (BuildContext context, int index) {
//             return ;
//           },
//         ),
//       )
//     }
//     return ;
//   },
// ),
// )