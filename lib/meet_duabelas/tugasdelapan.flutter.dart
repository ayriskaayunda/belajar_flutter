import 'package:belajar_flutter/meet_duabelas/tugastujuh.flutter.dart';
import 'package:belajar_flutter/meet_satu/tugas1_flutter.dart';
import 'package:flutter/material.dart';

class Tugasdelapan extends StatefulWidget {
  const Tugasdelapan({super.key});

  @override
  State<Tugasdelapan> createState() => _TugasdelapanState();
}

class _TugasdelapanState extends State<Tugasdelapan> {
  int _selectIndex = 0;
  static const List<Widget> _screen = [Tugastujuh(), MyProfile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: "tugas 7"),
        ],
        onTap: (value) {
          setState(() {
            _selectIndex = value;
          });
          print("Halaman saat ini : $_selectIndex");
        },
      ),
    );
  }
}
