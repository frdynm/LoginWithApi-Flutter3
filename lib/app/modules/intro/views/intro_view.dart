import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_api/app/modules/login/views/login_view.dart';
import 'package:login_api/app/routes/app_pages.dart';
import 'package:login_api/warna.dart';

import '../controllers/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SEWA MOTOR',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(warna.mainColor),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: Get.width,
                height: Get.height * 0.5,
                child: Image.asset(
                  "assets/images/Frame7.png",
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Ayo sewa motor untuk mendapatkan pengalaman berbeda dalam liburan anda',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color(warna.mainColor),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Mempermudah akses ke penyedia motor untuk disewa ',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    color: Color(warna.mainColor),
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.LOGIN);
                },
                child: Container(
                  width: Get.width * 0.5,
                  height: Get.height * 0.09,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: Color(warna.mainColor),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Mulai Sekarang",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(warna.mainColor),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
