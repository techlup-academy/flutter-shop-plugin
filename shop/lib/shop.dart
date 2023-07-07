
import 'shop_platform_interface.dart';

class Shop {
  Future<String?> getPlatformVersion() {
    return ShopPlatform.instance.getPlatformVersion();
  }
}
