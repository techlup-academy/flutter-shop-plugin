import 'package:flutter/material.dart';
import 'package:shop/app/modules/home_binding.dart';
import 'package:shop/app/modules/home_page.dart';
import 'package:shop/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:shop/app/config.dart';


class ShopPlugin extends StatelessWidget {
  const ShopPlugin({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: HomeBinding(),
      home: const HomePage(),
      getPages: AppPages.pages,
    );
  }
}