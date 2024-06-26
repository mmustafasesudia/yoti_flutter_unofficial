import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'yoti_flutter_unofficial_method_channel.dart';

abstract class YotiFlutterUnofficialPlatform extends PlatformInterface {
  /// Constructs a YotiFlutterUnofficialPlatform.
  YotiFlutterUnofficialPlatform() : super(token: _token);

  static final Object _token = Object();

  static YotiFlutterUnofficialPlatform _instance = MethodChannelYotiFlutterUnofficial();

  /// The default instance of [YotiFlutterUnofficialPlatform] to use.
  ///
  /// Defaults to [MethodChannelYotiFlutterUnofficial].
  static YotiFlutterUnofficialPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [YotiFlutterUnofficialPlatform] when
  /// they register themselves.
  static set instance(YotiFlutterUnofficialPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<int?> startYoti(String sessionId, String sessionToken) {
    throw UnimplementedError('startYoti() has not been implemented.');
  }
}
