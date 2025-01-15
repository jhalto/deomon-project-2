import 'package:demon_project_2/core/const/app_colors.dart';
import 'package:demon_project_2/core/const/bg_images.dart';
import 'package:demon_project_2/core/global_widgets/text_styles.dart';
import 'package:demon_project_2/splash/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Splash extends StatelessWidget {
  Splash({super.key});

  var controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              BgImagesPath.logo,
              width: 141,
              height: 162,
            ),
            Text(
              "CustomClone",
              style: robortoStyles(32, AppColors.whiteColor, FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
