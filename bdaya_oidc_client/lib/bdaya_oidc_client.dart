
import 'bdaya_oidc_client_platform_interface.dart';

class BdayaOidcClient {
  Future<String?> getPlatformVersion() {
    return BdayaOidcClientPlatform.instance.getPlatformVersion();
  }
}
