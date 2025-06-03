import 'package:belajar_flutter/Tugas%2010/thankscreen.dart';
import 'package:flutter/material.dart';

class Tugas10 extends StatefulWidget {
  const Tugas10({super.key});

  @override
  State<Tugas10> createState() => _Tugas10State();
}

class _Tugas10State extends State<Tugas10> {
  final _formkey = GlobalKey<FormState>();
  final _namaLengkapController = TextEditingController();
  final _emailController = TextEditingController();
  final _noHpController = TextEditingController();
  final _kotaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Anda"), backgroundColor: Colors.brown),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                controller: _namaLengkapController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama harus di isi';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 14),
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email harus di isi';
                  } else if (!value.contains("@")) {
                    return 'Email tidak valid';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 14),
              TextFormField(
                controller: _noHpController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Masukan nomor Hp',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 14),
              TextFormField(
                controller: _kotaController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Kota Domisili harus di isi';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Kota Domisili',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 12),

              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('konfirmasi'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Nama: ${_namaLengkapController.text}'),
                              Text('Email:${_emailController.text}'),
                              Text('Nomor Handphone:${_noHpController.text}'),
                              Text('Kota Domisili:${_kotaController.text}'),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => HalamanTerimakasih(
                                          nama: _namaLengkapController.text,
                                          kota: _kotaController.text,
                                        ),
                                  ),
                                );
                              },
                              child: Text("Lanjut"),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text("Daftar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
