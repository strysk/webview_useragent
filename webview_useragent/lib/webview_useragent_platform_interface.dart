import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'webview_useragent_method_channel.dart';

abstract class WebviewUseragentPlatform extends PlatformInterface {
  /// Constructs a WebviewUseragentPlatform.
  WebviewUseragentPlatform() : super(token: _token);

  static final Object _token = Object();

  static WebviewUseragentPlatform _instance = MethodChannelWebviewUseragent();

  /// The default instance of [WebviewUseragentPlatform] to use.
  ///
  /// Defaults to [MethodChannelWebviewUseragent].
  static WebviewUseragentPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WebviewUseragentPlatform] when
  /// they register themselves.
  static set instance(WebviewUseragentPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
