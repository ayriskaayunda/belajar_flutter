import 'package:flutter/material.dart';

class Tugassembilan extends StatefulWidget {
  const Tugassembilan({super.key});

  @override
  State<Tugassembilan> createState() => _TugassembilanState();
}

class _TugassembilanState extends State<Tugassembilan> {
  final List<String> peralatanOlahraga = [
    "Bola Basket",
    "Sepak Bola",
    "bola Baseball",
    "Tenis",
    "Bola Voli",
    "Kriket",
    "Golf",
    "American football",
    "Handball",
    "Gym Ball",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Peralatan Olahraga")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: peralatanOlahraga.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    peralatanOlahraga[index],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
