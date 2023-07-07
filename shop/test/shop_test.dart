import 'package:flutter_test/flutter_test.dart';
import 'package:shop/shop.dart';
import 'package:shop/shop_platform_interface.dart';
import 'package:shop/shop_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockShopPlatform
    with MockPlatformInterfaceMixin
    implements ShopPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ShopPlatform initialPlatform = ShopPlatform.instance;

  test('$MethodChannelShop is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelShop>());
  });

  test('getPlatformVersion', () async {
    Shop shopPlugin = Shop();
    MockShopPlatform fakePlatform = MockShopPlatform();
    ShopPlatform.instance = fakePlatform;

    expect(await shopPlugin.getPlatformVersion(), '42');
  });
}
