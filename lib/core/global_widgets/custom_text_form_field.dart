import 'package:demon_project_2/core/const/app_colors.dart';
import 'package:demon_project_2/core/global_widgets/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  TextEditingController controller;
  String hint;
  FocusNode? focusNode;
  CustomTextFormField(
      {super.key, required this.controller, required this.hint,this.focusNode});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(),
      width: double.infinity,
      child: TextFormField(
        controller: controller,
        style: poppinsStyles(
          14, AppColors.whiteColor, FontWeight.w300
        ),
        decoration: InputDecoration(
          labelText: hint,
          labelStyle: poppinsStyles(
            12, Color(0xff8B8B8Bd) , FontWeight.w300
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.textFieldBorderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.textFieldBorderColor,
            ),
          ),
        ),
      ),
    );
  }
}
