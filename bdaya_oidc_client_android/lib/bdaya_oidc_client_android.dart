import 'package:bdaya_oidc_client_platform_interface/bdaya_oidc_client_platform_interface.dart';

class BdayaOidcClientPlugin extends BdayaOidcClientPlatform {
  @override
  Future<String?> getPlatformVersion() {
    return BdayaOidcClientPlatform.instance.getPlatformVersion();
  }
}
