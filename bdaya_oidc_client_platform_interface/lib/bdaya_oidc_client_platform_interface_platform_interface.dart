import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'bdaya_oidc_client_platform_interface_method_channel.dart';

abstract class BdayaOidcClientPlatformInterfacePlatform extends PlatformInterface {
  /// Constructs a BdayaOidcClientPlatformInterfacePlatform.
  BdayaOidcClientPlatformInterfacePlatform() : super(token: _token);

  static final Object _token = Object();

  static BdayaOidcClientPlatformInterfacePlatform _instance = MethodChannelBdayaOidcClientPlatformInterface();

  /// The default instance of [BdayaOidcClientPlatformInterfacePlatform] to use.
  ///
  /// Defaults to [MethodChannelBdayaOidcClientPlatformInterface].
  static BdayaOidcClientPlatformInterfacePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BdayaOidcClientPlatformInterfacePlatform] when
  /// they register themselves.
  static set instance(BdayaOidcClientPlatformInterfacePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
