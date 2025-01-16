import 'package:demon_project_2/core/const/app_colors.dart';
import 'package:demon_project_2/core/global_widgets/text_styles.dart';
import 'package:flutter/material.dart';

class CreateCompany extends StatelessWidget {
  const CreateCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111111),
      appBar: AppBar(
        
        backgroundColor: Color(0xff111111),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
           children: [
              Text("Create Company",style: poppinsStyles(
                 20,Color(0xffF2F5F9),FontWeight.w600
              ),),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 100,
                width: 100,
                child: Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 100, 
                        backgroundImage: AssetImage("assets/images/user.png"),
                      ),
                      Positioned(
                        right: 1,
                        bottom: 2,
                        child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xff4E4E4E),
                        child: Image.asset("assets/images/edit.png",width: 16,height: 16,)),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8,),
                  
              Text("Your company banner",style: poppinsStyles(
                  16,AppColors.whiteColor ,FontWeight.w400 
              ),),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     
                  ],
                ),
              )
           ],
        ),
      ),
    );
  }
}