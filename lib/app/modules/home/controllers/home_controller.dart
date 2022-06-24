import 'package:get/get.dart';
import 'package:login_api/app/modules/login/controllers/login_controller.dart';
import 'package:login_api/app/modules/login/views/login_view.dart';
import 'package:login_api/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  void Logout() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
    Get.offAllNamed(Routes.INTRO);
    // Get.offAllNamed(Routes.AUTH);
  }
}
