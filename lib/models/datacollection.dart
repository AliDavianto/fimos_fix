import 'dart:ffi';

class staff{
  String? uid;
  String? email_staff;
  int? id_staff;
  String? nama_staff;
  String? nomorHp_staff;
  String? password_staff;
  staff({this.uid,this.email_staff,this.id_staff,this.nama_staff,this.nomorHp_staff,this.password_staff});
}

class admin{
  String? uid;
  String? email_admin;
  int? id_admin;
  String? nama_admin;
  String? nomorHp_admin;
  String? password_admin;
  admin({this.uid,this.email_admin,this.id_admin,this.nama_admin,this.nomorHp_admin,this.password_admin});
}

class konsumsi_pakan{
  String? uid;
  int? id_pakan;
  String? jenis_pakan;
  int? kuantitas_pakan;
  DateTime? tgl_konsumsi;
  konsumsi_pakan({this.uid,this.id_pakan,this.kuantitas_pakan,this.tgl_konsumsi,this.jenis_pakan});
}

class laporan{
  String? uid;
  int? id_laporan;
  int? id_pakan;
  String? jenis_laporan;
  String? jenis_pakan;
  int? kuantitas_pakan;
  DateTime? tgl_laporan;
  laporan({this.uid,this.id_laporan,this.id_pakan,this.jenis_laporan,this.jenis_pakan,this.kuantitas_pakan,this.tgl_laporan,});
}

class suplai{
  String? uid;
  int? id_pakan;
  String? jenis_pakan;
  int? kuantitas_pakan;
  DateTime? tgl_konsumsi;
  suplai({this.uid,this.id_pakan,this.kuantitas_pakan,this.tgl_konsumsi,this.jenis_pakan});
}

