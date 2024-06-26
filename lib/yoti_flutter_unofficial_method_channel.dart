import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'yoti_flutter_unofficial_platform_interface.dart';

/// An implementation of [YotiFlutterUnofficialPlatform] that uses method channels.
class MethodChannelYotiFlutterUnofficial extends YotiFlutterUnofficialPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('yoti_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<int?> startYoti(String sessionId, String sessionToken) async {
    return await methodChannel.invokeMethod<int>(
        'startYoti', {'sessionId': sessionId, 'sessionToken': sessionToken});
  }
}
