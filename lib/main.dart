import 'package:belajar_flutter/meet_11/login_screen.dart';
import 'package:belajar_flutter/meet_12/tugastujuh.flutter.dart';
import 'package:belajar_flutter/meet_16/register_screen.dart';
import 'package:belajar_flutter/tugas%2014/view/user_list_screen.dart';
import 'package:belajar_flutter/utils/splash_screen.dart';
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
        "/": (context) => SplashScreen(),
        "login": (context) => LoginScreen(),
        "register": (context) => RegisterScreenApp(),
        "tugas_tujuh": (context) => Tugastujuh(),
        "tugas_empatbelas": (context) => CatScreen(),

        //   //Harus didaftarkan dulu disini
        // "/": (context) => SiswaApp(),
        // "/": (context) => DaftarAktivitas(),
        // "/login": (context) => LoginScreen(),
        // "/meet_2": (context) => MeetDua(),
        // LoginScreenApp.id: (context) => LoginScreenApp(),
        // RegisterScreenApp.id: (context) => RegisterScreenApp(),
        // MeetTigaA.id: (context) => MeetTigaA(),
        // Meet12AInputWidget.id: (context) => Meet12AInputWidget(),
        // Tugasdelapan.id: (context) => Tugasdelapan(),
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
