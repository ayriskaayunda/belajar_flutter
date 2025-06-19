import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text("Profile Lengkap ", style: TextStyle()),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/butterfly.png'),
          ),
          Text(
            "Nama Lengkap: Fatimah Az Zahra ",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Container(
              child: Row(
                children: [Icon(Icons.email), Text("fatimah@gmail.com")],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Row(
              children: [
                Icon(Icons.phone, color: Colors.greenAccent),
                Spacer(),
                Text(
                  "0815-3456-8909",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      color: Colors.brown,
                      child: Center(
                        child: Text(
                          "postingan",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      color: Colors.lightBlueAccent,
                      child: Center(
                        child: Text(
                          "Folowers",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(15.0)),
                Text(
                  "Seorang yang sedang belajar & terus Bertumbuh dan inilah Sekilas tentang Saya",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(height: 50.0, color: Colors.amber),
    );
  }
}
