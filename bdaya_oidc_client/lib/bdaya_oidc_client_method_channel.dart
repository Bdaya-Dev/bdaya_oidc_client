import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'bdaya_oidc_client_platform_interface.dart';

/// An implementation of [BdayaOidcClientPlatform] that uses method channels.
class MethodChannelBdayaOidcClient extends BdayaOidcClientPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('bdaya_oidc_client');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
