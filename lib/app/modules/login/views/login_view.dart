import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_api/app/modules/login/controllers/login_controller.dart';
import 'package:login_api/app/routes/app_pages.dart';
import 'package:login_api/warna.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.01,
            ),
            Container(
              width: Get.width,
              height: Get.height * 0.49,
              child: Stack(
                children: [
                  Container(
                    width: Get.width,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hallo",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                                color: Color(warna.mainColor),
                              ),
                            ),
                          ),
                          Text(
                            "Selamat Datang Kembali",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Color(warna.mainColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width,
                    child: Image.asset(
                      'assets/images/Frame7.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: Get.width,
              height: Get.height * 0.5,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Log In",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(warna.mainColor),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: controller.emailC,
                      decoration: InputDecoration(
                          // focusedborder == ketika di klik nanti mau di apain si outline nya
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(warna.mainColor), width: 1.0)),
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: "Email",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Obx(() => TextFormField(
                          obscureText: controller.isHiden.value,
                          controller: controller.passwordC,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () => controller.isHiden.toggle(),
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: Color(warna.mainColor),
                              ),
                            ),
                            // focusedborder == ketika di klik nanti mau di apain si outline nya
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(warna.mainColor), width: 1.0)),
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () => print("Lupa sandi"),
                        child: Text(
                          "Lupa Password?",
                          style: TextStyle(
                              color: Colors.black26,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //ini untuk button
                    Container(
                      width: Get.width,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.LoginAPI();
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(warna.mainColor)),
                      ),
                    ),

                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Belum punya akun ? ",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black26)),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.REGISTER);
                              print("Tombol register di klik");
                            },
                            child: Text("Daftar Sekarang",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(warna.mainColor))),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
