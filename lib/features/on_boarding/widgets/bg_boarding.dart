import 'package:demon_project_2/core/const/app_colors.dart';
import 'package:demon_project_2/core/global_widgets/text_styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BgBoarding extends StatelessWidget {
  String img;
  String top;
  String middle;
  String bottom;
  GestureTapCallback function;
  BgBoarding(
      {super.key,
      required this.img,
      required this.top,
      required this.middle,
      required this.bottom,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    img,
                  ),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  top,
                  style:
                      poppinsStyles(32, AppColors.whiteColor, FontWeight.w300),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  middle,
                  style: poppinsStyles(
                    16,
                    AppColors.whiteColor,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: function,
                  child: Container(
                    height: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.whiteColor),
                    ),
                    child: Center(
                        child: Text(
                      bottom,
                      style: poppinsStyles(16, AppColors.whiteColor),
                    )),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
