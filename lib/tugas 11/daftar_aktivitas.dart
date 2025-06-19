import 'package:belajar_flutter/tugas%2011/database/db_helper.dart';
import 'package:belajar_flutter/tugas%2011/database/model/user_model3.dart';
<<<<<<< HEAD
=======
import 'package:belajar_flutter/tugas%2011/edit_daftar_screen.dart';
>>>>>>> 41680eee2d412126f23e497d653564150e64ae70
import 'package:flutter/material.dart';

class DaftarAktivitas extends StatefulWidget {
  const DaftarAktivitas({super.key});

  @override
  State<DaftarAktivitas> createState() => _DaftarAktivitasState();
}

class _DaftarAktivitasState extends State<DaftarAktivitas> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController umurController = TextEditingController();
  final TextEditingController aktivitasController = TextEditingController();
  final TextEditingController deskripsiController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  List<DaftarModel> daftarAktivitas = [];

  @override
  void initState() {
    super.initState();
    muatData();
  }

  Future<void> muatData() async {
    final data = await DBHelperAktivitas.getAllDaftar();
<<<<<<< HEAD
=======
    print('Loaded data: $data');
>>>>>>> 41680eee2d412126f23e497d653564150e64ae70
    setState(() {
      daftarAktivitas = data;
    });
  }

  Future<void> simpanData() async {
    final nama = namaController.text;
    final aktivitas = aktivitasController.text;
    final umur = int.tryParse(umurController.text) ?? 0;
    final deskripsi = deskripsiController.text;

    if (nama.isNotEmpty &&
        umur > 0 &&
        aktivitas.isNotEmpty &&
        deskripsi.isNotEmpty) {
      await DBHelperAktivitas.insertDaftar(
        DaftarModel(
          nama: nama,
          umur: umur,
          aktivitas: aktivitas,
          deskripsi: deskripsi,
        ),
      );
      namaController.clear();
      umurController.clear();
      aktivitasController.clear();
      deskripsiController.clear();
      muatData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Aktivitas Harian')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Wajib diisi';
                  } else {
                    return null;
                  }
                },
                controller: namaController,
                decoration: const InputDecoration(labelText: 'Nama'),
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Wajib diisi';
                  } else {
                    return null;
                  }
                },
                controller: umurController,
                decoration: const InputDecoration(labelText: 'Umur'),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Wajib diisi';
                  } else {
                    return null;
                  }
                },
                controller: aktivitasController,
                decoration: const InputDecoration(
                  labelText: 'Aktivitas harian',
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Wajib diisi';
                  } else {
                    return null;
                  }
                },
                controller: deskripsiController,
                decoration: const InputDecoration(labelText: 'Deskripsi'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    simpanData();
                  }
                },
                child: Text('Simpan'),
              ),
              const Divider(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: daftarAktivitas.length,
                  itemBuilder: (context, index) {
<<<<<<< HEAD
                    final Siswa = daftarAktivitas[index];
=======
                    final daftar = daftarAktivitas[index];
>>>>>>> 41680eee2d412126f23e497d653564150e64ae70
                    return ListTile(
                      leading: CircleAvatar(child: Text('${index + 1}')),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
<<<<<<< HEAD
                        children: [Text(Siswa.nama), Text(Siswa.aktivitas)],
                      ),
                      subtitle: Text('Umur: ${Siswa.umur}'),
=======
                        children: [Text(daftar.nama), Text(daftar.aktivitas)],
                      ),
                      subtitle: Text('Umur: ${daftar.umur}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () async {
                              // Pass a callback to reload the data after editing
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (_) => EditDaftarScreen(
                                        daftar: daftar,
                                        onUpdate: () {
                                          muatData(); // Refresh data when update is complete
                                        },
                                      ),
                                ),
                              );
                            },
                          ),
                          // SizedBox(width: 5),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () async {
                              await DBHelperAktivitas.deleteDaftar(daftar.id!);
                              muatData();
                            },
                          ),
                        ],
                      ),
>>>>>>> 41680eee2d412126f23e497d653564150e64ae70
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
