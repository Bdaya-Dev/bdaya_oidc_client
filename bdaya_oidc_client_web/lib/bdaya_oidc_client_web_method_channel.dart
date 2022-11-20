import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'bdaya_oidc_client_web_platform_interface.dart';

/// An implementation of [BdayaOidcClientWebPlatform] that uses method channels.
class MethodChannelBdayaOidcClientWeb extends BdayaOidcClientWebPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('bdaya_oidc_client_web');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
