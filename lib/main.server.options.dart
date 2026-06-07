// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:jaspr_portfolio/components/count_higlight.dart'
    as _count_higlight;
import 'package:jaspr_portfolio/components/counter.dart' as _counter;
import 'package:jaspr_portfolio/constants/theme.dart' as _theme;
import 'package:jaspr_portfolio/pages/about.dart' as _about;
import 'package:jaspr_portfolio/pages/hero.dart' as _hero;
import 'package:jaspr_portfolio/pages/navbar.dart' as _navbar;
import 'package:jaspr_portfolio/pages/shortcontent.dart' as _shortcontent;
import 'package:jaspr_portfolio/app.dart' as _app;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  clients: {_app.App: ClientTarget<_app.App>('app')},
  styles: () => [
    ..._theme.styles,
    ..._app.AppState.styles,
    ..._count_higlight.CountHiglight.styles,
    ..._counter.CounterState.styles,
    ..._about.About.styles,
    ..._hero.Hero.styles,
    ..._navbar.Navbar.styles,
    ..._shortcontent.Shortcontent.styles,
  ],
);
