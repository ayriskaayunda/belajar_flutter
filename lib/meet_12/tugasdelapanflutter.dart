import 'package:belajar_flutter/meet_12/profileflutter.dart';
import 'package:belajar_flutter/meet_12/tugastujuh.flutter.dart';
import 'package:flutter/material.dart';

class Tugasdelapan extends StatefulWidget {
  const Tugasdelapan({super.key});
  static const String id = "/tugasdelapanflutter";
  //
  @override
  State<Tugasdelapan> createState() => _TugasdelapanState();
}

class _TugasdelapanState extends State<Tugasdelapan> {
  int _selectIndex = 0;
  static const List<Widget> _screen = [Tugastujuh(), AboutPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.task), label: "tugas 7"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
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
