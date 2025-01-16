import 'package:demon_project_2/core/const/app_colors.dart';
import 'package:demon_project_2/core/const/bg_images.dart';
import 'package:demon_project_2/core/global_widgets/custom_text_form_field.dart';
import 'package:demon_project_2/core/global_widgets/media_query_size.dart';
import 'package:demon_project_2/core/global_widgets/text_styles.dart';
import 'package:demon_project_2/features/auth/views/login/controller/auth_controller.dart';
import 'package:demon_project_2/features/auth/widgets/login_bg.dart';
import 'package:demon_project_2/route/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/global_widgets/custom_button.dart';

class Role extends StatelessWidget {
  Role({super.key});
  var controller = Get.put(AuthController());
  
  
  @override
  Widget build(BuildContext context) {
  
    return LoginBg(
      img: BgImagesPath.onBoarding10,
      widget: SizedBox(
        height: mHeight(context), // Ensure it takes full screen height
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end, // Align children to the bottom
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: .7), // Shadow color
                    offset: Offset(0, 50), // Horizontal and vertical offset
                    blurRadius: 100, // How much the shadow blurs
                    spreadRadius: 100, // How much the shadow spreads
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose Your Role",
                    style: poppinsStyles(28, AppColors.whiteColor, FontWeight.w700),
                  ),
                  Text(
                    "To get started, please select the role that best describes your responsibilities.",
                    style: poppinsStyles(14, AppColors.whiteColor, FontWeight.w400),
                  ),
                ],
              ).paddingSymmetric(horizontal: 14),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
         
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  GestureDetector(
                    onTap: (){
                       controller.isSelectedCompany.value = true;
                            controller.isSelectedIndividual.value = false;
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 12,right: 12,top: 20,bottom: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.textFieldBorderColor,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text("For Company",style: poppinsStyles(
                              18,AppColors.whiteColor,FontWeight.w500
                        ),),
                        Obx(() => controller.isSelectedCompany.value?Icon(Icons.circle,color: AppColors.whiteColor,size: 16,): Icon(Icons.circle_outlined,color: AppColors.whiteColor,size: 16,),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  GestureDetector(
                    onTap: (){
                       controller.isSelectedCompany.value = false;
                            controller.isSelectedIndividual.value = true;
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 12,right: 12,top: 20,bottom: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.textFieldBorderColor,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text("For Individual",style: poppinsStyles(
                              18,AppColors.whiteColor,FontWeight.w500
                        ),),
                        Obx(() => controller.isSelectedIndividual.value?Icon(Icons.circle,color: AppColors.whiteColor,size: 16,): Icon(Icons.circle_outlined,color: AppColors.whiteColor,size: 16,),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 109,),
                  customButtonWidget(hint: "Continue", function: ( ) {
                    Get.toNamed(AppRoutes.register);
                  }),
                  SizedBox(height: 20),
                 
                ],
              ).paddingOnly(
                bottom: 45,
                top:  51,
                left: 18,
                right: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}