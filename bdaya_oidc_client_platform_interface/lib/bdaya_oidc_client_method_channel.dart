import 'package:flutter/services.dart';

import 'src/bdaya_oidc_client_platform.dart';

const MethodChannel _channel = MethodChannel('bdaya-dev.com/oidc_client');

/// An implementation of [BdayaOidcClientPlatform] that uses method channels.
class MethodChannelBdayaOidcClient extends BdayaOidcClientPlatform {
  @override
  Future<String?> getPlatformVersion() async {
    final version = await _channel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
