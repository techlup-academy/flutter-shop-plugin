import 'shop_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:shop/app/main.dart';
class Shop {
  Future<String?> getPlatformVersion() {
    return ShopPlatform.instance.getPlatformVersion();
  }

  ShopPlugin renderPlugin({String title = ''}) {
    return const ShopPlugin();
  }
}
