import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class WebviewUserAgentPlatform extends PlatformInterface {
  WebviewUserAgentPlatform(): super(token: _token);

  static final _token = Object();

  static WebviewUserAgentPlatform _instance = DefaultWebviewUserAgent();

  static WebviewUserAgentPlatform get instance => _instance;

  static set instance(WebviewUserAgentPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String> getPlatformUserAgent() {
    throw UnimplementedError('getPlatformUserAgent() has not been implemented.');
  }
}

class DefaultWebviewUserAgent extends WebviewUserAgentPlatform {
  DefaultWebviewUserAgent();
}