import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:login_api/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();

  RxBool isHiden = true.obs;

  Future<void> LoginAPI() async {
    final response = await http.post(
      Uri.parse("https://reqres.in/api/login"),
      body: ({
        "email": emailC.text,
        "password": passwordC.text,
      }),
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("token", body['token']);
      print(body);
      Get.snackbar(
          "berhasil login", "Silahkan check username dan password anda ");
      Get.offAllNamed(Routes.HOME);
    } else {
      print("username atau password salah");
      Get.snackbar("Gagal login", "Silahkan check username dan password anda ");
    }
  }
}
