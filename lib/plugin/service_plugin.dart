

import 'service_plugin_platform.dart';

class ServicePlugin {
  Future<String?> getPlatformVersion() {
    return ServicePluginPlatform.instance.getPlatformVersion();
  }
}