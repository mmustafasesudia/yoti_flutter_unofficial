import 'package:flutter_test/flutter_test.dart';
import 'package:yoti_flutter_unofficial/yoti_flutter_unofficial.dart';
import 'package:yoti_flutter_unofficial/yoti_flutter_unofficial_platform_interface.dart';
import 'package:yoti_flutter_unofficial/yoti_flutter_unofficial_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockYotiFlutterUnofficialPlatform
    with MockPlatformInterfaceMixin
    implements YotiFlutterUnofficialPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
  
  @override
  Future<int?> startYoti(String sessionId, String sessionToken) {
    // TODO: implement startYoti
    throw UnimplementedError();
  }
}

void main() {
  final YotiFlutterUnofficialPlatform initialPlatform = YotiFlutterUnofficialPlatform.instance;

  test('$MethodChannelYotiFlutterUnofficial is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelYotiFlutterUnofficial>());
  });

  test('getPlatformVersion', () async {
    YotiFlutterUnofficial yotiFlutterUnofficialPlugin = YotiFlutterUnofficial();
    MockYotiFlutterUnofficialPlatform fakePlatform = MockYotiFlutterUnofficialPlatform();
    YotiFlutterUnofficialPlatform.instance = fakePlatform;

    expect(await yotiFlutterUnofficialPlugin.getPlatformVersion(), '42');
  });
}
