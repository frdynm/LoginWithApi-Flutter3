import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:login_api/app/modules/login/views/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var token = prefs.getString("token");
  runApp(FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Application",
            initialRoute: token == null ? Routes.INTRO : Routes.HOME,
            getPages: AppPages.routes,
          );
        } else {
          return SplashScreen();
        }
      }));
}
