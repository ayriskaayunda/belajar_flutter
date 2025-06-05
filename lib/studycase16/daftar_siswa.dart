import 'package:belajar_flutter/studycase16/database/db_helper.dart';
import 'package:belajar_flutter/studycase16/model/user_model2.dart';
import 'package:flutter/material.dart';

class SiswaApp extends StatefulWidget {
  const SiswaApp({super.key});

  @override
  State<SiswaApp> createState() => _SiswaAppState();
}

class _SiswaAppState extends State<SiswaApp> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController umurController = TextEditingController();
  List<Siswa> daftarSiswa = [];

  @override
  void initState() {
    super.initState();
    muatData();
  }

  Future<void> muatData() async {
    final data = await DBHelper.getAllSiswa();
    setState(() {
      daftarSiswa = data;
    });
  }

  Future<void> simpanData() async {
    final nama = namaController.text;
    final umur = int.tryParse(umurController.text) ?? 0;

    if (nama.isNotEmpty && umur > 0) {
      await DBHelper.insertSiswa(Siswa(nama: nama, umur: umur));
      namaController.clear();
      umurController.clear();
      muatData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pendaftaran Siswa")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: const InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: umurController,
              decoration: const InputDecoration(labelText: 'Umur'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: simpanData, child: const Text('Simpan')),
            const Divider(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: daftarSiswa.length,
                itemBuilder: (context, index) {
                  final siswa = daftarSiswa[index];
                  return ListTile(
                    leading: CircleAvatar(child: Text('${siswa.umur}')),
                    title: Text(siswa.nama),
                    subtitle: Text('Umur: ${siswa.umur}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
