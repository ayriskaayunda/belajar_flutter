import 'package:flutter/material.dart';

class TugasEmpat extends StatelessWidget {
  const TugasEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Data Produk", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Rumah Makan",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                labelText: "Nama",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                prefixIconColor: Colors.blueGrey,
              ),
            ),
            SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                hintText: " Masukan Email",
                hintStyle: TextStyle(fontSize: 12),
                filled: true,
                fillColor: Colors.grey,
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.white38),
                ),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                hintText: " Masukan Nomor Telefon",
                hintStyle: TextStyle(fontSize: 12),
                filled: true,
                fillColor: Colors.grey,
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.white38),
                ),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: " Tuliskan Deskripsi Anda di sini . . .",
                hintStyle: TextStyle(fontSize: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.white38),
                ),
              ),
            ),
            const Text("Data Produk"),
            ListTile(
              leading: Image.asset(
                "assets/images/ayam-goreng_1.jpg",
                height: 100,
                width: 100,
              ),
              title: Text("ayam goreng"),
              subtitle: Text("RP 12.000"),
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/kentang goreng.jpg",
                height: 100,
                width: 100,
              ),
              title: Text("kentang goreng"),
              subtitle: Text("RP 7.000"),
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/Rendang.jpg",
                height: 100,
                width: 100,
              ),
              title: Text("Rendang"),
              subtitle: Text("RP 20.000"),
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/telur dadar.jpg",
                height: 100,
                width: 100,
              ),
              title: Text("telur dadar"),
              subtitle: Text("RP 5.000"),
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/tempe goreng.jpg",
                height: 100,
                width: 100,
              ),
              title: Text("tempe goreng"),
              subtitle: Text("RP 2.000"),
            ),
          ],
        ),
      ),
    );
  }
}
