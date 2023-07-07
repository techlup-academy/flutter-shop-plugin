#ifndef FLUTTER_PLUGIN_SHOP_PLUGIN_H_
#define FLUTTER_PLUGIN_SHOP_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace shop {

class ShopPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  ShopPlugin();

  virtual ~ShopPlugin();

  // Disallow copy and assign.
  ShopPlugin(const ShopPlugin&) = delete;
  ShopPlugin& operator=(const ShopPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace shop

#endif  // FLUTTER_PLUGIN_SHOP_PLUGIN_H_
