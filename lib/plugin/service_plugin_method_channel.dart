import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'service_plugin_platform.dart';


class ServicePluginMethodChannel extends ServicePluginPlatform {


  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_service_plugin');

  @override
  Future<String?> getPlatformVersion() async{
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}