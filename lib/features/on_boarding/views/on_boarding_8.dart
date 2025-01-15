import 'package:demon_project_2/features/on_boarding/views/on_boarding_9.dart';
import 'package:demon_project_2/features/on_boarding/widgets/bg_boarding.dart';
import 'package:demon_project_2/route/app_pages.dart';
import 'package:demon_project_2/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding8 extends StatelessWidget {
  const OnBoarding8({super.key});

  @override
  Widget build(BuildContext context) {
    return BgBoarding(
      img: "assets/images/Onboarding - 8.png",
      top: "Connect with Collogues",
      middle: "Connect with your office buddy and enjoy your life thoughts.",
      bottom: "Next",
      function: () {
        Get.toNamed(AppRoutes.onBoarding9);
      },
    );
  }
}
