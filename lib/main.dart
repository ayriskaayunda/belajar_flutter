import 'package:belajar_flutter/Tugas%2010/tugassepuluh.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: "/",
      // routes: {
      //   //Harus didaftarkan dulu disini
      //   "/": (context) => LoginScreen(),
      //   "/meet_2": (context) => MeetDua(),
      //   MeetTigaA.id: (context) => MeetTigaA(),
      // },
      debugShowCheckedModeBanner: false,
      title: 'PPKD B 2',

      theme: ThemeData(
        // useMaterial3: true,
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder()},
        ),
      ),
      home: Tugas10(),
    );
  }
}
