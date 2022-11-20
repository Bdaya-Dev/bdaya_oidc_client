import 'package:flutter_test/flutter_test.dart';
import 'package:bdaya_oidc_client_web/bdaya_oidc_client_web.dart';
import 'package:bdaya_oidc_client_web/bdaya_oidc_client_web_platform_interface.dart';
import 'package:bdaya_oidc_client_web/bdaya_oidc_client_web_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBdayaOidcClientWebPlatform
    with MockPlatformInterfaceMixin
    implements BdayaOidcClientWebPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BdayaOidcClientWebPlatform initialPlatform = BdayaOidcClientWebPlatform.instance;

  test('$MethodChannelBdayaOidcClientWeb is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBdayaOidcClientWeb>());
  });

  test('getPlatformVersion', () async {
    BdayaOidcClientWeb bdayaOidcClientWebPlugin = BdayaOidcClientWeb();
    MockBdayaOidcClientWebPlatform fakePlatform = MockBdayaOidcClientWebPlatform();
    BdayaOidcClientWebPlatform.instance = fakePlatform;

    expect(await bdayaOidcClientWebPlugin.getPlatformVersion(), '42');
  });
}
