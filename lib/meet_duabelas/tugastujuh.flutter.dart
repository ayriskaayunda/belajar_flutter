import 'package:belajar_flutter/constant/app_color.dart';
import 'package:belajar_flutter/constant/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Tugastujuh extends StatefulWidget {
  const Tugastujuh({super.key});

  @override
  State<Tugastujuh> createState() => _TugastujuhState();
}

class _TugastujuhState extends State<Tugastujuh> {
  bool isChecked = false;
  bool isSwitchOn = false;
  bool isDarkMode = false;
  String? _selectedCategory;
  DateTime? _selectDate;
  TimeOfDay? _selectTime;
  String? isSelected;

  int _selectedIndex = 0; // ← Changed from final to mutable

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      _buildCheckBox(),
      _buildDarkMode(),
      _buildCategory(),
      _buildDate(),
      _buildTime(),
      Center(child: Text("Halaman 2")),
      Center(child: Text("Halaman 3")),
    ];

    return Theme(
      data: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        backgroundColor: isSwitchOn ? AppColor.army2 : Colors.white,
        appBar: AppBar(
          backgroundColor: isSwitchOn ? AppColor.army2 : Colors.white,
          centerTitle: true,
          title: const Text(
            "Formulir",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: CupertinoColors.systemBrown,
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: AppColor.army3),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                        'assets/images/butterfly.png',
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mariska",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "PPKD BATCH 2",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.assignment),
                title: Text("Checkbox"),
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.assignment),
                title: Text("Dark Mode"),
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.assignment),
                title: Text("Kategori"),
                onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.assignment),
                title: Text("Tanggal"),
                onTap: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.assignment),
                title: Text("Waktu"),
                onTap: () {
                  setState(() {
                    _selectedIndex = 4;
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: screens[_selectedIndex],
      ),
    );
  }

  Widget _buildCheckBox() {
    return Column(
      children: [
        CheckboxListTile(
          title: const Text("Saya Menyetujui semua Persyaratan yang Berlaku"),
          activeColor: Colors.blueGrey,
          checkColor: Colors.white,
          side: BorderSide(),
          shape: CircleBorder(),
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value ?? false;
            });
          },
        ),
        SizedBox(height: 8),
        Text(
          isChecked
              ? 'Lanjutkan Pendaftaran di Perbolehkan'
              : 'Anda belum bisa Melanjutkan',
          style: TextStyle(
            fontSize: 16,
            color: isChecked ? Colors.green : Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildDarkMode() {
    return Row(
      children: [
        Switch(
          value: isSwitchOn,
          onChanged: (value) {
            setState(() {
              isSwitchOn = value;
            });
          },
        ),
        Text(
          isSwitchOn ? "Mode Gelap" : "Mode Terang",
          style: AppStyle.fontBold(fontSize: isSwitchOn ? 25 : 18),
        ),
      ],
    );
  }

  Widget _buildCategory() {
    return DropdownButton<String>(
      value: isSelected,
      hint: Text("Pilih Kategori Produk"),
      items:
          ["Elektronik", "Pakaian", "Makanan", "Lainnya"]
              .map(
                (String val) => DropdownMenuItem(value: val, child: Text(val)),
              )
              .toList(),
      onChanged: (val) {
        setState(() {
          isSelected = val;
        });
      },
    );
  }

  Widget _buildDate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Pilih Tanggal Lahir',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _pickDate,
          child: const Text('Pilih Tanggal Lahir'),
        ),
        const SizedBox(height: 20),
        Text(
          _selectDate == null
              ? 'Belum memilih tanggal'
              : 'Tanggal Lahir: ${DateFormat('d MMMM y').format(_selectDate!)}',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildTime() {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.black22,
            foregroundColor: Colors.white,
          ),
          onPressed: _pickTime,
          child: Text("Pilih Waktu Pengingat"),
        ),
        SizedBox(height: 20),
        if (_selectTime != null)
          Text("Pengingat diatur pukul: ${_formatTime(_selectTime!)}"),
      ],
    );
  }

  Future<void> _pickDate() async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Colors.black,
              onPrimary: Colors.white,
              onSurface: Colors.black,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(foregroundColor: AppColor.army1),
            ),
          ),
          child: child!,
        );
      },
    );
    if (date != null) {
      setState(() {
        _selectDate = date;
      });
    }
  }

  Future<void> _pickTime() async {
    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColor.army1,
              onPrimary: Colors.white,
              onSurface: Colors.black,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(foregroundColor: AppColor.army1),
            ),
          ),
          child: child!,
        );
      },
    );
    if (time != null) {
      setState(() {
        _selectTime = time;
      });
    }
  }

  String _formatDate(DateTime date) {
    return DateFormat('d MMMM yyyy', 'id_ID').format(date);
  }

  String _formatTime(TimeOfDay time) {
    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    return DateFormat.jm('en_US').format(dt);
  }
}
