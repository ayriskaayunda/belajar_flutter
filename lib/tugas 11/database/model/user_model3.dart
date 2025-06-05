import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class DaftarModel {
  final int? id;
  final String nama;
  final String aktivitas;
  final int umur;
  final String deskripsi;
  DaftarModel({
    this.id,
    required this.nama,
    required this.aktivitas,
    required this.umur,
    required this.deskripsi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nama': nama,
      'aktivitas': aktivitas,
      'umur': umur,
      'deskripsi': deskripsi,
    };
  }

  factory DaftarModel.fromMap(Map<String, dynamic> map) {
    return DaftarModel(
      id: map['id'] != null ? map['id'] as int : null,
      nama: map['nama'] as String,
      aktivitas: map['aktivitas'] as String,
      umur: map['umur'] as int,
      deskripsi: map['deskripsi'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DaftarModel.fromJson(String source) =>
      DaftarModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
