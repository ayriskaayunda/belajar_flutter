import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(
          255,
          230,
          169,
          169,
        ), // changed color to indigoAccept
        title: Text('profile saya'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Nama: Andi Rahmat",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
          ),
          Row(
            children: [
              Icon(Icons.location_on),
              Text(
                "jakarta",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Text(
            "Seorang Pelajar yang sedang belajar Flutter",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
