import 'package:demon_project_2/core/global_widgets/text_styles.dart';
import 'package:flutter/material.dart';

import '../const/app_colors.dart';

// ignore: must_be_immutable
class customButtonWidget extends StatelessWidget {
  String hint;
  VoidCallback function;
  customButtonWidget({super.key, required this.hint, required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 11),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.buttonBgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Text(
          hint,
          style: poppinsStyles(16, AppColors.whiteColor),
        )),
      ),
    );
  }
}
