#include "include/shop/shop_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "shop_plugin.h"

void ShopPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  shop::ShopPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
