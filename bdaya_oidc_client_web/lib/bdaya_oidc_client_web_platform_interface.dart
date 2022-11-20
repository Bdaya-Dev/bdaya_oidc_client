import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'bdaya_oidc_client_web_method_channel.dart';

abstract class BdayaOidcClientWebPlatform extends PlatformInterface {
  /// Constructs a BdayaOidcClientWebPlatform.
  BdayaOidcClientWebPlatform() : super(token: _token);

  static final Object _token = Object();

  static BdayaOidcClientWebPlatform _instance = MethodChannelBdayaOidcClientWeb();

  /// The default instance of [BdayaOidcClientWebPlatform] to use.
  ///
  /// Defaults to [MethodChannelBdayaOidcClientWeb].
  static BdayaOidcClientWebPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BdayaOidcClientWebPlatform] when
  /// they register themselves.
  static set instance(BdayaOidcClientWebPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
