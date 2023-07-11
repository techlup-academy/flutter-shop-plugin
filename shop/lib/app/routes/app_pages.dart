import 'package:shop/app/modules/home_binding.dart';
import 'package:shop/app/modules/home_page.dart';
import 'package:shop/app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}