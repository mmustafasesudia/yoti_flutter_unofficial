import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yoti_flutter_unofficial/yoti_flutter_unofficial_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelYotiFlutterUnofficial platform = MethodChannelYotiFlutterUnofficial();
  const MethodChannel channel = MethodChannel('yoti_flutter_unofficial');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
