// import 'package:belajar_flutter/tugas%2011/daftar_aktivitas.dart';
import 'package:belajar_flutter/tugas%2011/database/db_helper.dart';
import 'package:belajar_flutter/tugas%2011/database/model/user_model3.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class EditDaftarScreen extends StatefulWidget {
  final DaftarModel daftar;
  final VoidCallback onUpdate;
  const EditDaftarScreen({
    super.key,
    required this.daftar,
    required this.onUpdate,
  });

  @override
  State<EditDaftarScreen> createState() => _EditDaftarScreenState();
}

class _EditDaftarScreenState extends State<EditDaftarScreen> {
  late TextEditingController namaController;
  late TextEditingController umurController;
  late TextEditingController aktivitasController;
  late TextEditingController deskripsiController;

  @override
  void initState() {
    namaController = TextEditingController(text: widget.daftar.nama);
    umurController = TextEditingController(text: widget.daftar.umur.toString());
    aktivitasController = TextEditingController(text: widget.daftar.aktivitas);
    deskripsiController = TextEditingController(text: widget.daftar.deskripsi);
    super.initState();
  }

  void update() async {
    final updated = DaftarModel(
      id: widget.daftar.id,
      nama: namaController.text,
      aktivitas: aktivitasController.text,
      umur: int.tryParse(umurController.text) ?? 0,
      deskripsi: deskripsiController.text,
    );
    print('Updating data: $updated'); // Debug print to check values
    await DBHelperAktivitas.updateDaftar(updated);
    widget.onUpdate();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Daftar Aktivitas')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: 'nama'),
            ),
            TextField(
              controller: umurController,
              decoration: InputDecoration(labelText: 'umur'),
              keyboardType: TextInputType.numberWithOptions(),
            ),
            TextField(
              controller: aktivitasController,
              decoration: InputDecoration(labelText: 'aktivitas'),
            ),
            TextField(
              controller: deskripsiController,
              decoration: InputDecoration(labelText: 'Deskripsi'),
            ),
            ElevatedButton(onPressed: update, child: Text('update')),
          ],
        ),
      ),
    );
  }
}
