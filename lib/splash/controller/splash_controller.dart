import 'package:demon_project_2/route/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    delay();
  }

  delay() {
    Future.delayed(Duration(seconds: 1), () {
      Get.offAllNamed(AppRoutes.onBoarding8);
    });
  }
}
