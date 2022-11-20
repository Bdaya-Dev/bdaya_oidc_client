import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bdaya_oidc_client_platform_interface/bdaya_oidc_client_method_channel.dart';

void main() {
  MethodChannelBdayaOidcClient platform = MethodChannelBdayaOidcClient();
  const MethodChannel channel = MethodChannel('bdaya-dev.com/oidc_client');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
