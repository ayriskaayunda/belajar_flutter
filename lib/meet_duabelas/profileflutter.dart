import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Aplikasi'),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/images/butterfly.png"),
                backgroundColor: Colors.blueGrey,
              ),
              const SizedBox(height: 20),
              buildContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            'FlutterApp',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Aplikasi ini Saya buat untuk tugas mobile programming dengan Flutter.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          Divider(height: 30, thickness: 1),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Dibuat oleh:', style: TextStyle(fontSize: 16)),
              Text('Mariska', style: TextStyle(fontSize: 16)),
            ],
          ),
          Divider(height: 30, thickness: 1),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Versi:', style: TextStyle(fontSize: 16)),
              Text('1.0.0', style: TextStyle(fontSize: 16)),
            ],
          ),
          Divider(height: 30, thickness: 1),
        ],
      ),
    );
  }
}
