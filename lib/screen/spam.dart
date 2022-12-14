//signup page
// import 'package:flutter/material.dart';
// import '../styleguide/font_style.dart';
// class Signup extends  StatefulWidget {
//   const Signup({super.key});

//   @override
//   State<Signup> createState() => _Signup();
// }

// class _Signup extends State<Signup> {
//   final _staff_name = TextEditingController();
//   final _staff_email = TextEditingController();
//   final _staff_numberHp = TextEditingController();
//   final _staff_password = TextEditingController();
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
    
//         final nameField = Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("Username",style: label,),
//               SizedBox( height: 8,),
//               TextFormField(
//          
//         autofocus: false,
//         validator: (value) {
//           if (value == null || value.trim().isEmpty) {
//             return 'This field is required';
//           }
//         },
//         decoration: InputDecoration(
//             contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//             hintText: "Masukan Nama Lengkap Anda",
//             border:
//                 OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))))
//             ]),        
//         ); 

//     return Scaffold(resizeToAvoidBottomInset: false,

//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Form(
//             key: _formKey,
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   nameField,

//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),);
//   }
// }


//textfield
        // final nameField = TextFormField(
        // controller: _staff_name,
        // autofocus: false,
        // validator: (value) {
        //   if (value == null || value.trim().isEmpty) {
        //     return 'This field is required';
        //   }
        // },
        // decoration: InputDecoration(
        //     contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        //     hintText: "masukan nama lengkapa anda",
        //     border:
        //         OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))));


//save button or daftar button

    // final SaveButon = Material(
    //   elevation: 5.0,
    //   borderRadius: BorderRadius.circular(30.0),
    //   color: Theme.of(context).primaryColor,
    //   child: MaterialButton(
    //     minWidth: MediaQuery.of(context).size.width,
    //     padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
    //     onPressed: () async {
    //       if (_formKey.currentState!.validate()) {
    //         var response = await FirebaseCrud.addEmployee(
    //             name: _employee_name.text,
    //             position: _employee_position.text,
    //             contactno: _employee_contact.text);
    //         if (response.code != 200) {
    //           showDialog(
    //               context: context,
    //               builder: (context) {
    //                 return AlertDialog(
    //                   content: Text(response.message.toString()),
    //                 );
    //               });
    //         } else {
    //           showDialog(
    //               context: context,
    //               builder: (context) {
    //                 return AlertDialog(
    //                   content: Text(response.message.toString()),
    //                 );
    //               });
    //         }
    //       }
    //     },
    //     child: Text(
    //       "Save",
    //       style: TextStyle(color: Theme.of(context).primaryColorLight),
    //       textAlign: TextAlign.center,
    //     ),
    //   ),
    // );\


    //login logic
    // final email = _staff_email.text;
    //                   final password = _staff_password.text;
    //                   try {
    //                     final userCredential =
    //                         await FirebaseAuth.instance.signInWithEmailAndPassword(
    //                       email: email,
    //                       password: password,
    //                     );
    //                     print(userCredential);
    //                   } on FirebaseAuthException catch (e) {
    //                     if (e.code == 'user-not-found') {
    //                       print("User is not Found");
    //                     } else if (e.code == 'wrong password') {
    //                       print("Wrong Password");
    //                     }
    //                   }

    // connecnt to admin table
//     final FirebaseFirestore _firestoreadmin = FirebaseFirestore.instance;
// final CollectionReference _Collectionadmin = _firestore.collection('admin');



//logout button
// SizedBox(height: 32,),
//                   SizedBox(
                
//                   width: 315, // <-- Your width
//                   height: 41, // <-- Your height
//                   child: TextButton(
                      
//                     style: TextButton.styleFrom(
//                     foregroundColor: Color(0xFFFFFFFF),
//                     backgroundColor: Color(0xFF307A59),
//                     textStyle: const TextStyle(fontSize: 20),
//                     shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    
//                   ),
//                   onPressed: (){log.logout();
                 
//                   },
                  
                  
//                   child:  Text('keluar', style: button_t),
//                     ),
//                 ),

// signup1.signup(_staff_email.text, _staff_password.text);

//converting string to int
//kuantitasPakan = int.parse(kuantitas);

 
  void  main(){
  
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