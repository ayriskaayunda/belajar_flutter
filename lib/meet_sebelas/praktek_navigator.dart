import 'package:flutter/material.dart';

class PraktekNavigator extends StatelessWidget {
  const PraktekNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Navigator"), centerTitle: true),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => PraktekNavigator()),
              (route) => false,
            );
          },
          child: Text(
            "Say Hallo",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
