import 'package:demon_project_2/features/auth/views/login_view.dart';
import 'package:demon_project_2/features/auth/widgets/login_bg.dart';
import 'package:demon_project_2/route/app_pages.dart';
import 'package:demon_project_2/splash/view/splash.dart';
import 'package:demon_project_2/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (p0, p1, p2) {
      return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.splashScreen,
      getPages: AppPages.routes,
    );

    },);   }
}
