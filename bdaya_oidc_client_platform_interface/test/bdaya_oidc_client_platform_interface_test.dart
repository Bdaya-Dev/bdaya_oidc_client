import 'package:flutter_test/flutter_test.dart';
import 'package:bdaya_oidc_client_platform_interface/bdaya_oidc_client_platform_interface.dart';
import 'package:bdaya_oidc_client_platform_interface/bdaya_oidc_client_platform_interface_platform_interface.dart';
import 'package:bdaya_oidc_client_platform_interface/bdaya_oidc_client_platform_interface_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBdayaOidcClientPlatformInterfacePlatform
    with MockPlatformInterfaceMixin
    implements BdayaOidcClientPlatformInterfacePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BdayaOidcClientPlatformInterfacePlatform initialPlatform = BdayaOidcClientPlatformInterfacePlatform.instance;

  test('$MethodChannelBdayaOidcClientPlatformInterface is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBdayaOidcClientPlatformInterface>());
  });

  test('getPlatformVersion', () async {
    BdayaOidcClientPlatformInterface bdayaOidcClientPlatformInterfacePlugin = BdayaOidcClientPlatformInterface();
    MockBdayaOidcClientPlatformInterfacePlatform fakePlatform = MockBdayaOidcClientPlatformInterfacePlatform();
    BdayaOidcClientPlatformInterfacePlatform.instance = fakePlatform;

    expect(await bdayaOidcClientPlatformInterfacePlugin.getPlatformVersion(), '42');
  });
}
