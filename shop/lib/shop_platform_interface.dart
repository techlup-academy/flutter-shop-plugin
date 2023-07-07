import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'shop_method_channel.dart';

abstract class ShopPlatform extends PlatformInterface {
  /// Constructs a ShopPlatform.
  ShopPlatform() : super(token: _token);

  static final Object _token = Object();

  static ShopPlatform _instance = MethodChannelShop();

  /// The default instance of [ShopPlatform] to use.
  ///
  /// Defaults to [MethodChannelShop].
  static ShopPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ShopPlatform] when
  /// they register themselves.
  static set instance(ShopPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
