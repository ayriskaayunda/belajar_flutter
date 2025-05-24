import 'package:flutter/material.dart';

class TugasLima extends StatefulWidget {
  const TugasLima({super.key});

  @override
  State<TugasLima> createState() => _TugasLima();
}

class _TugasLima extends State<TugasLima> {
  String nama = "Riskaa";
  String outputName = '';
  String outputLike = '';
  String outputText = '';
  int hitung = 0;
  bool _isPressed = false;
  bool _tampilText = false;

  void _handleTap() {
    print("Tekan Aku");
    setState(() {
      _tampilText = !_tampilText;
    });
  }

  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Halaman Profile"), centerTitle: true),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            hitung++;
          });
        },
        child: const Icon(Icons.add),
      ),

      body: Column(
        children: [
          Center(child: Text('$hitung', style: TextStyle(fontSize: 40))),
          ElevatedButton(
            onPressed: () {
              setState(() {
                outputName = isVisible ? 'Nama Saya: $nama' : "";
                isVisible = !isVisible;
              });
            },
            child: Text("Tampilkan Nama"),
          ),
          Text(outputName),
          IconButton(
            onPressed: () {
              setState(() {
                outputLike = isVisible ? "" : "di sukai";
                isVisible = !isVisible;
              });
            },
            icon: Icon(
              Icons.favorite,
              color: isVisible ? Colors.red : Colors.black,
            ),
          ),
          Text(outputLike),

          TextButton(
            onPressed: () {
              setState(() {
                _isPressed = !_isPressed;
              });
            },
            child: const Text(
              "Lihat Selengkapnya",
              style: TextStyle(fontSize: 16, color: Colors.blueAccent),
            ),
          ),
          if (_isPressed)
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Buterflyy", style: TextStyle(fontSize: 14)),
            ),
          SizedBox(height: 24),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: _handleTap,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.grey,
                    child: Text(
                      "Tekan Saya",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                if (_tampilText)
                  Text('Text Muncul', style: TextStyle(fontSize: 16)),
                SizedBox(height: 20),
                //GestureDector
                Center(
                  child: GestureDetector(
                    onTap: () {
                      print('Di Tekan Sekali');
                    },
                    onDoubleTap: () {
                      print('di Tekan dua kali');
                    },
                    onLongPress: () {
                      print('di Tahan Lama');
                    },
                    child: Text(
                      "Tekan Aku",
                      style: TextStyle(fontSize: 24, color: Colors.blueGrey),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
