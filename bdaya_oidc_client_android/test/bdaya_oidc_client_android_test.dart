// import 'package:flutter_test/flutter_test.dart';
// import 'package:bdaya_oidc_client_android/bdaya_oidc_client_android.dart';
// import 'package:bdaya_oidc_client_android/bdaya_oidc_client_android_platform_interface.dart';
// import 'package:bdaya_oidc_client_android/bdaya_oidc_client_android_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockBdayaOidcClientAndroidPlatform
//     with MockPlatformInterfaceMixin
//     implements BdayaOidcClientAndroidPlatform {

//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

// void main() {
//   final BdayaOidcClientAndroidPlatform initialPlatform = BdayaOidcClientAndroidPlatform.instance;

//   test('$MethodChannelBdayaOidcClientAndroid is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelBdayaOidcClientAndroid>());
//   });

//   test('getPlatformVersion', () async {
//     BdayaOidcClientAndroid bdayaOidcClientAndroidPlugin = BdayaOidcClientAndroid();
//     MockBdayaOidcClientAndroidPlatform fakePlatform = MockBdayaOidcClientAndroidPlatform();
//     BdayaOidcClientAndroidPlatform.instance = fakePlatform;

//     expect(await bdayaOidcClientAndroidPlugin.getPlatformVersion(), '42');
//   });
// }
