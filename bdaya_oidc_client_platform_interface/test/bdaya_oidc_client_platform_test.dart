import 'package:flutter_test/flutter_test.dart';
import 'package:bdaya_oidc_client_platform_interface/bdaya_oidc_client_platform_interface.dart';
import 'package:bdaya_oidc_client_platform_interface/src/bdaya_oidc_client_platform.dart';
import 'package:bdaya_oidc_client_platform_interface/bdaya_oidc_client_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBdayaOidcClientPlatform with MockPlatformInterfaceMixin implements BdayaOidcClientPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BdayaOidcClientPlatform initialPlatform = BdayaOidcClientPlatform.instance;

  test('$MethodChannelBdayaOidcClient is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBdayaOidcClient>());
  });

  // test('getPlatformVersion', () async {
  //   BdayaOidcClientPlatformInterface bdayaOidcClientPlatformInterfacePlugin = BdayaOidcClientPlatformInterface();
  //   MockBdayaOidcClientPlatform fakePlatform = MockBdayaOidcClientPlatform();
  //   BdayaOidcClientPlatform.instance = fakePlatform;

  //   expect(await bdayaOidcClientPlatformInterfacePlugin.getPlatformVersion(), '42');
  // });
}
