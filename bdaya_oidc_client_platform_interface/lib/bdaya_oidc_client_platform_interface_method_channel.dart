import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'bdaya_oidc_client_platform_interface_platform_interface.dart';

/// An implementation of [BdayaOidcClientPlatformInterfacePlatform] that uses method channels.
class MethodChannelBdayaOidcClientPlatformInterface extends BdayaOidcClientPlatformInterfacePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('bdaya_oidc_client_platform_interface');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
