//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <shop/shop_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) shop_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "ShopPlugin");
  shop_plugin_register_with_registrar(shop_registrar);
}
