
import 'yoti_flutter_unofficial_platform_interface.dart';

class YotiFlutterUnofficial {
  Future<String?> getPlatformVersion() {
    return YotiFlutterUnofficialPlatform.instance.getPlatformVersion();
  }
  Future<int?> startYoti(String sessionId, String sessionToken) {
    return YotiFlutterUnofficialPlatform.instance.startYoti(sessionId, sessionToken);
  }
}
