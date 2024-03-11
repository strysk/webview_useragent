import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class WebviewUserAgentPlatform extends PlatformInterface {
  WebviewUserAgentPlatform(): super(token: _token);

  static final _token = Object();

  static WebviewUserAgentPlatform _instance = _DefaultWebviewUserAgent();

  static WebviewUserAgentPlatform get instance => _instance;

  static set instance(WebviewUserAgentPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String> getPlatformUserAgent() {
    throw UnimplementedError('getPlatformUserAgent() has not been implemented.');
  }
}

class _DefaultWebviewUserAgent extends WebviewUserAgentPlatform {
  _DefaultWebviewUserAgent();
  
  @override
  Future<String> getPlatformUserAgent() {
    return Future.value("default value");
  }
}