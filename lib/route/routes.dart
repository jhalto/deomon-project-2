import 'package:demon_project_2/features/auth/views/login/view/login_view.dart';
import 'package:demon_project_2/features/auth/views/register.dart';
import 'package:demon_project_2/features/auth/views/role.dart';
import 'package:demon_project_2/features/on_boarding/views/on_boarding_10.dart';
import 'package:demon_project_2/features/on_boarding/views/on_boarding_8.dart';
import 'package:demon_project_2/features/on_boarding/views/on_boarding_9.dart';
import 'package:demon_project_2/route/app_pages.dart';
import 'package:demon_project_2/splash/view/splash.dart';
import 'package:get/get.dart';

class AppPages {
  static String getSplashScreen() => AppRoutes.splashScreen;
  static String getOnBoarding8Screen() => AppRoutes.onBoarding8;
  static String getOnBoarding9Screen() => AppRoutes.onBoarding9;
  static String getOnBoarding10Screen() => AppRoutes.onBoarding10;
  static String getLogin() => AppRoutes.login;
  static String role() => AppRoutes.role;

  static List<GetPage> routes = [
    GetPage(name: AppRoutes.splashScreen, page: () => Splash()),
    GetPage(
      name: AppRoutes.onBoarding8,
      page: () => OnBoarding8(),
    ),
    GetPage(
      name: AppRoutes.onBoarding9,
      page: () => OnBoarding9(),
    ),
    GetPage(
      name: AppRoutes.onBoarding10,
      page: () => OnBoarding10(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginView(),
    ),
    GetPage(
      name: AppRoutes.role,
      page: () => Role(),
    ),
    GetPage(name: AppRoutes.register, page: () => RegisterScreen(),)
  ];
}
