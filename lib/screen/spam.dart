import 'dart:ffi';
import 'package:fimos_fix/CRUD/crud_auth_login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

  void  main(){
//  var as =0.obs;
//      as +1;
//      var az = (as + 1).obs;
//      var ac = as.toString();
//      var xc = int.parse(ac);
//      print(xc);
     print("test");
  }

// Card dari laporan


      // Container(
                
      //           child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text("Laporan Terbaru",style: label,),
      //                 SizedBox(
      //                   height: 12,
      //                 ),
                      
      //                 Container(
      //                   height: 228,
      //                   width: 332,
      //                   decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(8.0),
      //                   color: Colors.white,),

      //                   child: Column(
      //                     children: [
      //                       Container(
      //                         margin: EdgeInsets.only(top: 12.0, left:14.0),
      //                         child: Row(
                                
      //                           children: [
                                  
      //                             Text("Id:411",style: laporan,),

      //                             SizedBox(
      //                               width: 230,
      //                             ),

      //                             Text("22/8/2022",style: laporan,),
      //                           ],
      //                         ),

      //                       ),
                            
                            
      //                       Container(
      //                         margin: EdgeInsets.only(top: 13.0, left:14.0),
      //                         child: Row(
      //                         children: [
      //                             Container(
      //                         child: Column(
      //                           crossAxisAlignment: CrossAxisAlignment.start,
      //                           children: [
      //                             Text("Jenis Pakan : Hijauan ",style: Paragraph,),
      //                             SizedBox(height:12 ,),
      //                             Text("Jenis Ternak : Kambing  ",style: Paragraph,),
      //                             SizedBox(height:12 ,),
      //                             Text("Bulan : Agustus  ",style: Paragraph,),
      //                             SizedBox(height:12 ,),
      //                             Text("Kuantitas Ternak : 20  ",style: Paragraph,),
      //                             SizedBox(height:12 ,),
      //                             Text("Konsumsi Pakan : 1220 Kg  ",style: Paragraph,),
      //                             SizedBox(height:12 ,),
      //                             Text("Staff : Suryano  ",style: Paragraph,),
      //                           ],
      //                         ),
      //                       )
      //                         ],
      //                       ),)
      //                     ],
      //                   ),   
      //                 ),
                      
      //               ],
      //             )
      //         ),


      //list page dari firetest
//       import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firetest/models/employee.dart';
// import 'package:firetest/page/addpage.dart';
// import 'package:firetest/page/editpage.dart';
// import 'package:flutter/material.dart';

// import '../services/firebase_crud.dart';

// class ListPage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _ListPage();
//   }
// }

// class _ListPage extends State<ListPage> {
//   final Stream<QuerySnapshot> collectionReference = FirebaseCrud.readEmployee();
//   //FirebaseFirestore.instance.collection('Employee').snapshots();
//   @override 
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         title: const Text("List of Employee"),
//         backgroundColor: Theme.of(context).primaryColor,
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(
//               Icons.app_registration,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               Navigator.pushAndRemoveUntil<dynamic>(
//                 context,
//                 MaterialPageRoute<dynamic>(
//                   builder: (BuildContext context) => AddPage(),
//                 ),
//                 (route) =>
//                     false, //if you want to disable back feature set to false
//               );
//             },
//           )
//         ],
//       ),
//       body: StreamBuilder(
//         stream: collectionReference,
//         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (snapshot.hasData) {
//             return Padding(
//               padding: const EdgeInsets.only(top: 8.0),
//               child: ListView(
//                 children: snapshot.data!.docs.map((e) {
//                   return Card(
//                       child: Column(children: [
//                     ListTile(
//                       title: Text(e["employee_name"]),
//                       subtitle: Container(
//                         child: (Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Text("Position: " + e['position'],
//                                 style: const TextStyle(fontSize: 14)),
//                             Text("Contact Number: " + e['contact_no'],
//                                 style: const TextStyle(fontSize: 12)),
//                           ],
//                         )),
//                       ),
//                     ),
//                     ButtonBar(
//                       alignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         TextButton(
//                           style: TextButton.styleFrom(
//                             padding: const EdgeInsets.all(5.0),
//                             primary: const Color.fromARGB(255, 143, 133, 226),
//                             textStyle: const TextStyle(fontSize: 20),
//                           ),
//                           child: const Text('Edit'),
//                           onPressed: () {
//                             Navigator.pushAndRemoveUntil<dynamic>(
//                               context,
//                               MaterialPageRoute<dynamic>(
//                                 builder: (BuildContext context) => EditPage(
//                                   employee: Employee(
//                                       uid: e.id,
//                                       employeename: e["employee_name"],
//                                       position: e["position"],
//                                       contactno: e["contact_no"]),
//                                 ),
//                               ),
//                               (route) =>
//                                   false, //if you want to disable back feature set to false
//                             );
//                           },
//                         ),
//                         TextButton(
//                           style: TextButton.styleFrom(
//                             padding: const EdgeInsets.all(5.0),
//                             primary: const Color.fromARGB(255, 143, 133, 226),
//                             textStyle: const TextStyle(fontSize: 20),
//                           ),
//                           child: const Text('Delete'),
//                           onPressed: () async {
//                             var response =
//                                 await FirebaseCrud.deleteEmployee(docId: e.id);
//                             if (response.code != 200) {
//                               showDialog(
//                                   context: context,
//                                   builder: (context) {
//                                     return AlertDialog(
//                                       content:
//                                           Text(response.message.toString()),
//                                     );
//                                   });
//                             }
//                           },
//                         ),
//                       ],
//                     ),
//                   ]));
//                 }).toList(),
//               ),
//             );
//           }

//           return Container();
//         },
//       ),
//     );
//   }
// }

//card report home admin 
      //  Text("Jenis Pakan : Hijauan ",style: Paragraph,),
      //                             SizedBox(height:12 ,),
      //                             Text("Jenis Ternak : Kambing  ",style: Paragraph,),
      //                             SizedBox(height:12 ,),
      //                             Text("Bulan : Agustus  ",style: Paragraph,),
      //                             SizedBox(height:12 ,),
      //                             Text("Kuantitas Ternak : 20  ",style: Paragraph,),
      //                             SizedBox(height:12 ,),
      //                             Text("Konsumsi Pakan : 1220 Kg  ",style: Paragraph,),
      //                             SizedBox(height:12 ,),
      //                             Text("Staff : Suryano  ",style: Paragraph,),