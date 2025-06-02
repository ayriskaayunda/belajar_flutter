import 'package:flutter/material.dart';

class alatOlahraga extends StatefulWidget {
  const alatOlahraga({super.key});

  @override
  State<alatOlahraga> createState() => _alatOlahragaState();
}

class _alatOlahragaState extends State<alatOlahraga> {
  List<Map<String, dynamic>> Kategori = [
    {'alat': 'Bola Basket', 'icon': Icons.sports_baseball},
    {'alat': 'Sepak Bola', 'icon': Icons.sports_baseball},
    {'alat': 'bola Baseball', 'icon': Icons.sports_baseball},
    {'alat': 'Tenis', 'icon': Icons.sports_baseball},
    {'alat': 'Bola Voli', 'icon': Icons.sports_baseball},
    {'alat': 'Kriket', 'icon': Icons.sports_baseball},
    {'alat': 'Golf', 'icon': Icons.sports_baseball},
    {'alat': 'American FootBall', 'icon': Icons.sports_baseball},
    {'alat': 'Handball', 'icon': Icons.sports_baseball},
    {'alat': 'Gymmball', 'icon': Icons.sports_baseball},
  ];

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> kategoriAlat = Kategori.toList();
    return Scaffold(
      appBar: AppBar(title: Text("kategoriAlat")),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: kategoriAlat.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(kategoriAlat[index]['alat']),
            subtitle: Text(kategoriAlat[index]['icon']),
          );
        },
      ),
    );
  }
}
