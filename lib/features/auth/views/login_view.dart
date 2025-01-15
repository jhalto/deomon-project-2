import 'package:demon_project_2/core/const/app_colors.dart';
import 'package:demon_project_2/core/global_widgets/custom_text_form_field.dart';
import 'package:demon_project_2/core/global_widgets/text_styles.dart';
import 'package:demon_project_2/features/auth/controllers/auth_controller.dart';
import 'package:demon_project_2/features/auth/widgets/login_bg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/global_widgets/custom_button.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  var controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return LoginBg(
      img: "assets/images/Login_bg.png",
      widget: Stack(
        children: [
          Column(
            children: [
              Expanded(child: SizedBox()),
              Expanded(child: Container(
                
                decoration: BoxDecoration(
                   color: AppColors.blackColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )
                ),
               
              ))
            ],
          )
        ],
      )
    );
  }
}
