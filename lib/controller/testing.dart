  // one time read data from firebase
  
  // body :    FutureBuilder<QuerySnapshot<Object?>>(
          
  //       future: rc.getData(),
  //       builder: (context, snapshot) {
  //         if (snapshot.connectionState == ConnectionState.done) {
            
  //         var ListAllDocs = snapshot.data!.docs;
          
  //         return ListView.builder(
  //           itemCount: ListAllDocs.length,
  //           itemBuilder: (context, index) => ListTile(
  //               title: Text("${ListAllDocs[index].get('id_laporan')}"),
                
  //               subtitle: Text("id laporan ${ListAllDocs[index].id}"),

  //           ),
  //           );
  //       }
  //         return Center(child: CircularProgressIndicator(),);
  //       }
  //       )


// class DropdownButtonController extends GetxController {
//   var selectedValue = "".obs;
//   List<String> options = ["Option 1", "Option 2", "Option 3"].obs;
// }
// final dropdownButtonController = DropdownButtonController();

//    GetBuilder<DropdownButtonController>(
//   init: dropvalue,
//   builder: (dropdownController) => DropdownButton<String>(
//     value: dropdownController.selectedValue.value,
//     onChanged: (value) => dropdownController.selectedValue.value = value,
//     items: dropdownController.options.value.map((option) => 
//       DropdownMenuItem(child: Text(option), value: option)).toList()
//   ),
// ),





//  Obx (() => Container(
                
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("Jenis Pakan",style: label,),
//                       SizedBox(
//                         height: 8,
//                       ),
//                       SizedBox(
//                   height: 40,
//                   width: 315,
//                         child: TextField(
                          
//                     keyboardType: TextInputType.number,      
//                     controller: jenisPakan , 
//                     decoration:  InputDecoration(
                      
//                       border:   OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
//                       hintText:dropvalue.a,hintStyle: Paragraph,
//                       //labelText: ,
//                       suffixIcon: dropvalue.DropdownButtonsPakan(),
                      
//                     ),
//                   ),
                        
//                       )
                      
//                     ],
//                   )
//               ),
//               ),