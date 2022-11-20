import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bdaya_oidc_client_web/bdaya_oidc_client_web_method_channel.dart';

void main() {
  MethodChannelBdayaOidcClientWeb platform = MethodChannelBdayaOidcClientWeb();
  const MethodChannel channel = MethodChannel('bdaya_oidc_client_web');

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
