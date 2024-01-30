

class ServicePluginPlatform extends PlatformInterface {

  ServicePluginPlatform():super(token: _token);

  static final Object _token = Object();

  static ServicePluginPlatform _instance = ServicePluginMethodChannel();

  static ServicePluginPlatform get instance => _instance;

  static set instance(ServicePluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion(){
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

}