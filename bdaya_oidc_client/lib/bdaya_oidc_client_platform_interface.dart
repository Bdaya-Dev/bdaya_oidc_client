import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'bdaya_oidc_client_method_channel.dart';

abstract class BdayaOidcClientPlatform extends PlatformInterface {
  /// Constructs a BdayaOidcClientPlatform.
  BdayaOidcClientPlatform() : super(token: _token);

  static final Object _token = Object();

  static BdayaOidcClientPlatform _instance = MethodChannelBdayaOidcClient();

  /// The default instance of [BdayaOidcClientPlatform] to use.
  ///
  /// Defaults to [MethodChannelBdayaOidcClient].
  static BdayaOidcClientPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BdayaOidcClientPlatform] when
  /// they register themselves.
  static set instance(BdayaOidcClientPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
