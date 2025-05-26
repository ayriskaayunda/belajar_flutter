import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TugasEnam extends StatefulWidget {
  const TugasEnam({super.key});

  @override
  State<TugasEnam> createState() => _TugasEnamState();
}

class _TugasEnamState extends State<TugasEnam> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, color: Colors.black),
        title: Text(
          "Login",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'gilroy',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'gilroy',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Sign In to your account",
                style: TextStyle(
                  color: Color(0xff888888),
                  fontSize: 14,
                  fontFamily: 'gilroy',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 32),
              Text(
                "Email Address",
                style: TextStyle(
                  color: Color(0xff888888),
                  fontSize: 12,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  hintText: "Riskaa",
                  hintStyle: TextStyle(fontSize: 14),
                  filled: true,
                  fillColor: Colors.white10,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(color: Color(0x200F0D23), width: 1),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Text(
                "Password",
                style: TextStyle(
                  color: Color(0xff888888),
                  fontSize: 12,
                  fontFamily: 'gilroy',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 12),

              TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  hintText: "Masukan Pasword Anda",
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.black26,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(color: Color(0x200F0D23), width: 1),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffEA9459),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),

              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff283FB1),
                  foregroundColor: Color(0xff283FB1),
                  textStyle: TextStyle(fontSize: 16),
                  minimumSize: Size(double.infinity, 48),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(color: Color(0xffffffff)),
                ),
              ),
              SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                      color: Color(0xff888888),
                      fontSize: 12,
                      fontFamily: 'gilroy',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Color(0xffEA9459),
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or Sign In With",
                      style: TextStyle(
                        color: Color(0xff888888),
                        fontSize: 12,
                        fontFamily: 'gilroy',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.grey)),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: Text("Google"),
                      icon: Image.asset(
                        'assets/images/google.png',
                        height: 20,
                        width: 20,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xfffafafa),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: Text("Facebook"),
                      icon: Image.asset(
                        'assets/images/facebook.png',
                        height: 20,
                        width: 20,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xfffafafa),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                      color: Color(0xff888888),
                      fontSize: 12,
                      fontFamily: 'gilroy',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Join Us",
                      style: TextStyle(
                        color: Color(0xffEA9459),
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
