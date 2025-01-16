import 'package:demon_project_2/core/const/app_colors.dart';
import 'package:demon_project_2/core/const/bg_images.dart';
import 'package:demon_project_2/core/global_widgets/custom_text_form_field.dart';
import 'package:demon_project_2/core/global_widgets/media_query_size.dart';
import 'package:demon_project_2/core/global_widgets/text_styles.dart';
import 'package:demon_project_2/features/auth/controllers/register_controller.dart';
import 'package:demon_project_2/features/auth/views/login/controller/auth_controller.dart';
import 'package:demon_project_2/features/auth/widgets/login_bg.dart';
import 'package:demon_project_2/route/app_pages.dart';
import 'package:demon_project_2/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/global_widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  var controller = Get.put(RegisterController());
  
  @override
  Widget build(BuildContext context) {
    bool isKeyBoardOpen = MediaQuery.of(context).viewInsets.bottom>0;
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: LoginBg(
        img: BgImagesPath.onBoarding10,
        widget: SizedBox(
          height: mHeight(context), // Ensure it takes full screen height
          child: Container(
            height: mHeight(context),
            child: SingleChildScrollView(
              
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
                    child: isKeyBoardOpen? SizedBox(): Column(
                     
                 
                      children: [
                        Text(
                          "Digital Vibes",
                          style: poppinsStyles(28, AppColors.whiteColor, FontWeight.w700),
                        ),
                        Text(
                          "Elevate your online presence – Share, engage, and ride the digital vibes",
                          style: poppinsStyles(14, AppColors.whiteColor, FontWeight.w400),
                        ),
                      ],
                    ).paddingSymmetric(horizontal: 30),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                       isKeyBoardOpen? SizedBox(): Text(
                          "Create Account!",
                          style: poppinsStyles(24, AppColors.whiteColor, FontWeight.w500),
                        ),
                        SizedBox(height: isKeyBoardOpen? 10: 20),
                        Text(
                          "Your Name",
                          style: poppinsStyles(16, AppColors.whiteColor, FontWeight.w400),
                        ),
                        SizedBox(height: 12),
                        CustomTextFormField(
                          controller: controller.nameController,
                          hint: "Name",
                          focusNode: controller.nameNode,
                      
                        ),
                        SizedBox(height: isKeyBoardOpen? 10 : 20),
                        Text(
                          "Email",
                          style: poppinsStyles(16, AppColors.whiteColor, FontWeight.w400),
                        ),
                        SizedBox(height: 12),
                        CustomTextFormField(
                          controller: controller.emailController,
                          hint: "Email",
                          focusNode: controller.emailNode,
                        ),
                        SizedBox(height: isKeyBoardOpen?10: 20),
                        Text(
                          "Password",
                          style: poppinsStyles(16, AppColors.whiteColor, FontWeight.w400),
                        ),
                        SizedBox(height: 12),
                        CustomTextFormField(
                          controller: controller.passwordController,
                          hint: "Password",
                          focusNode: controller.passwordNode,
                        ),
                        SizedBox(height: isKeyBoardOpen?10: 20),
                        Text(
                          "Password",
                          style: poppinsStyles(16, AppColors.whiteColor, FontWeight.w400),
                        ),
                        SizedBox(height: 12),
                        CustomTextFormField(
                          controller: controller.confirmPasswordController,
                          hint: "Password",
                          focusNode: controller.confirmPasswordNode,
                        ),
                        SizedBox(height: 20),
                        
                        customButtonWidget(hint: "Login", function: () {
                         showDialog(
                           
                          context: context, builder: (context) {
                             bool isKeyBoardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
                           return CustomDialogWidget(isKeyBoardOpen: isKeyBoardOpen);
                         },);
                        }),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Already Have an account? ",
                                  style: poppinsStyles(
                                    16,
                                    AppColors.whiteColor,
                                    FontWeight.w300,
                                  ),
                                ),
                                TextSpan(
                                  text: "Login here?",
                                  style: poppinsStyles(
                                    16,
                                    AppColors.whiteColor,
                                    FontWeight.w500,
                                    true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ).paddingOnly(
                      bottom: isKeyBoardOpen?10: 53,
                      top: isKeyBoardOpen?10: 40,
                      left: 20,
                      right: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDialogWidget extends StatelessWidget {
  const CustomDialogWidget({
    super.key,
    required this.isKeyBoardOpen,
  });

  final bool isKeyBoardOpen;

  @override
  Widget build(BuildContext context) {
    return Dialog(
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(
         16
       )
     ),
     
     child: Container(
       decoration: BoxDecoration(
          color:    Color(0xff2F2F2F),
          borderRadius: BorderRadius.circular(16)
       ),
       padding: EdgeInsets.all(16),
      
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisSize: MainAxisSize.min,
         children: [
          isKeyBoardOpen?SizedBox(): Text(
             "Need to join ",style: poppinsStyles(
               24,Color(0xffF2F5F9),FontWeight.w600
             ),
           ),
           Text(
             "To get started, please enter the user name of the desired company and explore their community.",style: poppinsStyles(
               14,Color(0xffF2F5F9),FontWeight.w400
             ),
           ),
           SizedBox(height: 20,),
            customField(),
            SizedBox(height: isKeyBoardOpen? 10: 32,),
            customButtonWidget(hint: "Continue", function: (){
                     Get.toNamed(AppRoutes.createCompany);
            })
           
       
         ],
       ),
     ),
    );
  }
}
