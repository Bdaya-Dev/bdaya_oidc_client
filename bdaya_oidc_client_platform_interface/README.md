# bdaya_oidc_client_platform_interface

A common platform interface for the [`bdaya_oidc_client`][1] plugin.

This interface allows platform-specific implementations of the `bdaya_oidc_client`
plugin, as well as the plugin itself, to ensure they are supporting the
same interface.

# Usage

To implement a new platform-specific implementation of `bdaya_oidc_client`, extend
[`BdayaOidcClientPlatform`][2] with an implementation that performs the
platform-specific behavior, and when you register your plugin, set the default
`BdayaOidcClientPlatform` by calling
`BdayaOidcClientPlatform.instance = MyPlatformBdayaOidcClientPlatform()`.

# Note on breaking changes

Strongly prefer non-breaking changes (such as adding a method to the interface)
over breaking changes for this package.

See https://flutter.dev/go/platform-interface-breaking-changes for a discussion
on why a less-clean interface is preferable to a breaking change.

[1]: ../bdaya_oidc_client
[2]: lib/bdaya_oidc_client_platform_interface.dart