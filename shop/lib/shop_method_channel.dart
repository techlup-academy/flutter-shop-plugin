import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'shop_platform_interface.dart';

/// An implementation of [ShopPlatform] that uses method channels.
class MethodChannelShop extends ShopPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('shop');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
