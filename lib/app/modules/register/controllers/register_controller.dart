import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController NamaLengkapC = TextEditingController();
  TextEditingController NoteleponeC = TextEditingController();
  var KotaC = "";
  TextEditingController PasswordC = TextEditingController();
  RxBool isHiden = true.obs;

  List<String> kota = [
    "Kota Bandung",
    "Kota Cimahi",
    "Kabupaten Bandung Barat",
    "Kabupaten Bandung Selatan",
    "Kabupaten Cimahi",
  ];
}
