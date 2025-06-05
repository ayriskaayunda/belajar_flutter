import 'package:belajar_flutter/constant/app_image.dart';
import 'package:belajar_flutter/constant/app_style.dart';
import 'package:belajar_flutter/helper/preferance.dart';
import 'package:belajar_flutter/meet_enambelas/loginscreenapp.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changePage() {
    Future.delayed(Duration(seconds: 3), () async {
      bool isLogin = await PreferenceHandler.getLogin();
      print("isLogin: $isLogin");
      // if (isLogin) {
      //   return Navigator.pushNamedAndRemoveUntil(
      //     context,
      //     Tugasdelapan.id,
      //     (route) => false,
      //   );
      // } else {
      Navigator.pushNamedAndRemoveUntil(
        context,
        LoginScreenApp.id,
        (route) => false,
      );
      // }
    });
  }

  @override
  void initState() {
    changePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),

            Image.asset(AppImage.bolabasket),
            SizedBox(height: 20),
            Text("bola basket", style: AppStyle.fontBold()),
            Spacer(),
            SafeArea(
              child: Text("v 1.0.0", style: AppStyle.fontRegular(fontSize: 10)),
            ),
          ],
        ),
      ),
    );
  }
}
