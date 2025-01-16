import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{
   TextEditingController nameController = TextEditingController();
   TextEditingController emailController = TextEditingController();
   TextEditingController passwordController = TextEditingController();
   TextEditingController confirmPasswordController = TextEditingController();

   FocusNode nameNode = FocusNode();
   FocusNode emailNode = FocusNode();
   FocusNode passwordNode = FocusNode();
   FocusNode confirmPasswordNode = FocusNode();
}