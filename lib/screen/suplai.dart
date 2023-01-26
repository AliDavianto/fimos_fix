  import 'dart:ui';

  import 'package:fimos_fix/controller/cardController.dart';
  import 'package:fimos_fix/parts/header.dart';
  import 'package:flutter/material.dart';
  import '../styleguide/font_style.dart';
  import '../controller/suplai_control.dart';
  import '../controller/suplaicontroller.dart';
  import 'package:intl/intl.dart';
  import 'package:get/get.dart';
  import '../CRUD/crud_auth_login.dart';
  import 'dart:ffi';
  import '../controller/globals.dart';
  import '../controller/report_control.dart';
  import '../CRUD/report_crud.dart';
  import '../parts/infocard.dart';
  import '../widget/dropdownPakan.dart';
  //jika error ganti Get.put(SuplaiController()); ke Get.put(suplaicontrol());
  void main() => runApp(suplai());


  class suplai extends StatelessWidget {

    final cc =  Get.put(Cardvar());
    final dropvalue = Get.put(DropdownValue());
    final kuantitas_pakan = TextEditingController();
    final jenisPakan = TextEditingController();
    final idPakan = TextEditingController();
    final TextEditingController tanggalDatang = TextEditingController();
    final tanggalExp = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final log = Get.put(AuthController());
    final sc = Get.put(SuplaiController(),permanent: true);
    final rc =Get.put(ReportSuplaiControl(),permanent: true);
    final nt= Get.put(addLaporan());
    final vc = Get.put(AddSuplaiControl());
    // var xs = 0;
  
    @override


    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        
        title: 'Flutter Demo',
        theme:  ThemeData(scaffoldBackgroundColor: const Color(0xFFF6F6F6)),
        home: Scaffold(
          body : SingleChildScrollView(
            
            child: Column(
              children: <Widget>[
                  SizedBox(
                  height: 12,
                  ),
  //header
          Container(
          
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            width: 324,
            height: 44,
            //color for header
            //color: darkGreen,
            child: Row(crossAxisAlignment: 
            CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [

              Header(),                  
              ],
            ),
          ),
  //body 
          SizedBox(
          height: 35,
          ),       

          infoCard(),

          SizedBox(
          height: 42,
          ),   

          Container(
            child: Column(
              children: [

                Container(
                  
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Jenis Pakan",style: label,),
                        SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                    height: 40,
                    width: 315,
                          child: 
                          Obx (() =>TextField(
                      readOnly: true,     
                      keyboardType: TextInputType.number,      
                      controller: jenisPakan ,                     
                      decoration:  InputDecoration(
                        
                        border:   OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                        hintText: dropvalue.a.string ,
                        hintStyle: Paragraph,
                        suffixIcon: dropvalue.DropdownButtonsPakan(),
                        
                      ),
                    ),
                          )          
                        )
                        
                      ],
                    )
                ),
                
                
                SizedBox(
                  height: 16,
                ),

                  Container(
                  
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Kuantitas Pakan",style: label,),
                        SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                    height: 40,
                    width: 315,
                          child: TextField(
                      
                      keyboardType: TextInputType.number,    
                      controller: kuantitas_pakan, 
                      
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                        hintText: "contoh : 200",hintStyle:hint ,
                        
                      ),
                    ),
                        )
                        
                      ],
                    )
                ),
                
                
                SizedBox(
                  height: 16,
                ),

                
                
                SizedBox(
                  height: 32,
                ),

                SizedBox(
                  
                    width: 315, // <-- Your width
                    height: 36, // <-- Your height
                    child: TextButton(
                      
                      style: TextButton.styleFrom(
                      foregroundColor: Color(0xFFFFFFFF),
                      backgroundColor: Color(0xFF307A59),
                      textStyle: const TextStyle(fontSize: 20),
                      shape:  RoundedRectangleBorder(borderRadius:  BorderRadius.circular(10.0)),
                      
                    ),
                    onPressed: () async {
            
              int  kuantitasPakan = int.parse(kuantitas_pakan.text);
              var kuantitasPakanR =  int.parse(kuantitas_pakan.text) ;             
                final DateTime now = DateTime.now();
                final DateFormat formatter = DateFormat('dd-MM-yyyy HH:mm:ss');
                final String formatted = formatter.format(now);          
                DateTime tanggaltambah =  DateFormat("dd-MM-yyyy HH:mm:ss").parse(formatted);
                

                //Datetime Report
                final DateTime nowL = DateTime.now();
                final DateFormat formatterL = DateFormat('dd-MM-yyyy HH:mm:ss');         
                final String laporan = formatterL.format(nowL);
                DateTime tanggaltambahLaporan =  DateFormat("dd-MM-yyyy HH:mm:ss").parse(laporan);
                var tgl  = tanggaltambahLaporan.toString();
                String z = dropvalue.a.string;
                String pakan = z;
                String konsen = "Konsentrart";
                String _jenispakan;
              String _idpakan;   
                  if (pakan == konsen) { 
                    _idpakan = "1";
                    _jenispakan = "Konsentrart";
                    
                  } else{
                    _idpakan = "2";
                    
                    _jenispakan = "Hijauan";
                  }
              var x = _idpakan;
              var zx = rc.id_laporan.value.obs;  
              var jenis = _jenispakan;
              sc.increment(kuantitasPakan,x);
              rc.reportSuplai(kuantitasPakanR,x,tgl,zx);
             // vc.addcontrolsuplai(sc.konsentrart.value, sc.hijauan.value, sc.used.value);
              sc.suplaikontrol(sc.konsentrart.value,  sc.hijauan.value,  sc.used.value);
              var response = await addsuplai.addSuplai (
                  kuantitas : kuantitasPakan ,
                  jenis: jenis,
                  tanggalDatang: tanggaltambah,
                  idpakan: x ,
                  
                  
                  );
                  
                  if (response.code != 200) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text(response.message.toString()),
                      );
                    });
              } else {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text(response.message.toString()),
                      );
                    });
                          
                    } 
                  //membuat laporan
                
              
              var zs = "Penambahan Suplai";
              nt.addreport(kuantitasPakan, jenis, zs, tanggaltambah, x);

                    }, 
                    
                    child:  Text('Tambah Suplai Pakan', style: button_t),
                      ),
                  ),

    

                  
              ],
            ),
          )

    




                
              ],
            )
          )));
      
    }
    
  }

