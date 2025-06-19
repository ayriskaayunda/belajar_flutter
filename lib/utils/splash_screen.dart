import 'package:belajar_flutter/constant/app_image.dart';
import 'package:belajar_flutter/constant/app_style.dart';
import 'package:belajar_flutter/helper/preferance.dart';
<<<<<<< HEAD
import 'package:belajar_flutter/tugas%2014/view/user_list_screen.dart';
=======
import 'package:belajar_flutter/meet_enambelas/loginscreenapp.dart';
>>>>>>> 41680eee2d412126f23e497d653564150e64ae70
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
<<<<<<< HEAD
      // Navigator.pushNamedAndRemoveUntil(
      //   context,
      //   LoginScreenApp.id,
      //   (route) => false,
      // );
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => CatScreen()),
        (Route) => false,
=======
      Navigator.pushNamedAndRemoveUntil(
        context,
        LoginScreenApp.id,
        (route) => false,
>>>>>>> 41680eee2d412126f23e497d653564150e64ae70
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
