import 'package:demon_project_2/core/const/bg_images.dart';
import 'package:demon_project_2/features/on_boarding/widgets/bg_boarding.dart';
import 'package:demon_project_2/route/app_pages.dart';
import 'package:demon_project_2/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding9 extends StatelessWidget {
  const OnBoarding9({super.key});

  @override
  Widget build(BuildContext context) {
    return BgBoarding(
      img: BgImagesPath.onBoarding9,
      top: "Socialize Smartly",
      middle:
          "Navigate the digital realm with finesse – Socialize smartly and make every post count.",
      bottom: "Next",
      function: () {
        Get.toNamed(AppRoutes.onBoarding10);
      },
    );
  }
}
