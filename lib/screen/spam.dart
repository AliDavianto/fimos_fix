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




