import 'package:belajar_flutter/constant/app_style.dart';
import 'package:flutter/material.dart';

class HalamanTerimakasih extends StatelessWidget {
  const HalamanTerimakasih({super.key, required this.nama, required this.kota});
  final String nama;
  final String kota;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Terimakasih ")),
      body: Center(
        child: Text(
          "Terimakasih $nama dari: $kota sudah Terdaftar",
          style: AppStyle.fontBold(),
        ),
      ),
    );
  }
}
