import 'package:flutter/material.dart';
import 'package:login_api/warna.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(warna.mainColor),
      child: Image.asset("assets/images/Logo.png"),
    );
  }
}
