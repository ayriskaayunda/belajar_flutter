import 'package:belajar_flutter/meet_dua/meet_2.dart';
import 'package:belajar_flutter/meet_duabelas/meet_12a.dart';
import 'package:belajar_flutter/meet_duabelas/tugasdelapanflutter.dart';
import 'package:belajar_flutter/meet_enambelas/loginscreenapp.dart';
import 'package:belajar_flutter/meet_enambelas/register_screen.dart';
import 'package:belajar_flutter/meet_sebelas/login_screen.dart';
import 'package:belajar_flutter/meet_tiga/meet_3a.dart';
import 'package:belajar_flutter/tugas%2011/daftar_aktivitas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get debugShowCheckedModeBanner => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        //   //Harus didaftarkan dulu disini
        // "/": (context) => SiswaApp(),
        "/": (context) => DaftarAktivitas(),
        "/login": (context) => LoginScreen(),
        "/meet_2": (context) => MeetDua(),
        LoginScreenApp.id: (context) => LoginScreenApp(),
        RegisterScreenApp.id: (context) => RegisterScreenApp(),
        MeetTigaA.id: (context) => MeetTigaA(),
        Meet12AInputWidget.id: (context) => Meet12AInputWidget(),
        Tugasdelapan.id: (context) => Tugasdelapan(),
      },

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
      // home: Tugas10(),
    );
  }
}
