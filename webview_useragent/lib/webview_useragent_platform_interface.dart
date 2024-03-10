import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'webview_useragent_method_channel.dart';

abstract class WebviewUserAgentPlatform extends PlatformInterface {
  /// Constructs a WebviewUseragentPlatform.
  WebviewUserAgentPlatform() : super(token: _token);

  static final Object _token = Object();

  static WebviewUserAgentPlatform _instance = MethodChannelWebviewUserAgent();

  /// The default instance of [WebviewUseragentPlatform] to use.
  ///
  /// Defaults to [MethodChannelWebviewUseragent].
  static WebviewUserAgentPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WebviewUseragentPlatform] when
  /// they register themselves.
  static set instance(WebviewUserAgentPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformUserAgent() {
    throw UnimplementedError('getPlatformUserAgent() has not been implemented.');
  }
}
