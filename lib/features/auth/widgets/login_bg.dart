import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginBg extends StatelessWidget {
  String img;
  Widget widget;
  LoginBg({super.key, required this.widget, required this.img});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
          width: double.infinity,
          height:  double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
          child: widget,
        ),
       
    );
  }
}
