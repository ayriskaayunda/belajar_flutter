import 'package:flutter/material.dart';

class TugasTiga extends StatelessWidget {
  const TugasTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.brown),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Formulir Pengguna"),
              TextField(
                decoration: InputDecoration(
                  hintText: " Masukan Nama",
                  hintStyle: TextStyle(fontSize: 12),
                  filled: true,
                  fillColor: Colors.grey,
                  suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.white38),
                  ),
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
              Text("My Galery"),
              SizedBox(height: 24),
              GridView.count(
                crossAxisCount: 3,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 12),
                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[
                  Container(color: Colors.cyan, child: Text("Photo 1")),
                  Container(color: Colors.grey, child: Text("Photo 2")),
                  Container(color: Colors.blueGrey, child: Text("Photo 3")),
                  Container(color: Colors.blueAccent, child: Text("Photo 4")),
                  Container(color: Colors.blue, child: Text(" Photo 5")),
                  Container(color: Colors.indigoAccent, child: Text("Photo 6")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
