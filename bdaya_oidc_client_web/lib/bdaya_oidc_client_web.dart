// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'package:bdaya_oidc_client_platform_interface/bdaya_oidc_client_platform_interface.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// A web implementation of the BdayaOidcClientWebPlatform of the BdayaOidcClientWeb plugin.
class BdayaOidcClientPlugin extends BdayaOidcClientPlatform {
  /// Constructs a BdayaOidcClientWebWeb
  BdayaOidcClientPlugin();

  static void registerWith(Registrar registrar) {
    BdayaOidcClientPlatform.instance = BdayaOidcClientPlugin();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = html.window.navigator.userAgent;
    return version;
  }
}
