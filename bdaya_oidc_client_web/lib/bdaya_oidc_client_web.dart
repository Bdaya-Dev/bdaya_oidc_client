
import 'bdaya_oidc_client_web_platform_interface.dart';

class BdayaOidcClientWeb {
  Future<String?> getPlatformVersion() {
    return BdayaOidcClientWebPlatform.instance.getPlatformVersion();
  }
}
