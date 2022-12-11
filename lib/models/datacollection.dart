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
  int? id_konsumsi;
  int? id_pakan;
  int? id_staff;
  String? jenis_pakan;
  int? kuantitas_pakan;
  int? kuantitas_ternak;
  DateTime? tgl_konsumsi;
  konsumsi_pakan({this.uid,this.id_konsumsi,this.id_pakan,this.id_staff,this.kuantitas_pakan,this.kuantitas_ternak,this.tgl_konsumsi,this.jenis_pakan});
}

class laporan{
  String? uid;
  int? id_konsumsi;
  int? id_laporan;
  int? id_pakan;
  int? id_staff;
  String? jenis_pakan;
  int? kuantitas_pakan;
  int? kuantitas_ternak;
  DateTime? tgl_konsumsi;
  DateTime? tgl_laporan;
  laporan({this.uid,this.id_konsumsi,this.id_pakan,this.id_staff,this.kuantitas_pakan,this.kuantitas_ternak,this.tgl_konsumsi,this.id_laporan,this.jenis_pakan,this.tgl_laporan});
}

class suplai{
  String? uid;
  int? id_staff;
  String? jenis_pakan;
  int? kuantitas_pakan;
  DateTime? tgl_dtg;
  DateTime? tgl_exp;
  suplai({this.uid,this.jenis_pakan,this.id_staff,this.kuantitas_pakan,this.tgl_dtg,this.tgl_exp});
}

