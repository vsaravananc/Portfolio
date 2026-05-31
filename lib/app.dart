import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_portfolio/constants/images.dart';
import 'package:jaspr_portfolio/pages/hero.dart';
import 'package:jaspr_portfolio/pages/navbar.dart';

import 'pages/about.dart';
import 'pages/home.dart';

// The main component of your application.
//
// By using the @client annotation this component will be automatically compiled to javascript and mounted
// on the client. Therefore:
// - this file and any imported file must be compilable for both server and client environments.
// - this component and any child components will be built once on the server during pre-rendering and then
//   again on the client during normal rendering.
@client
class App extends StatefulComponent {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    // Run code depending on the rendering environment.
    if (kIsWeb) {
      print("Hello client");
      // When using @client components there is no default `main()` function on the client where you would normally
      // run any client-side initialization logic. Instead you can put it here, considering this component is only
      // mounted once at the root of your client-side component tree.
    } else {
      print("Hello server");
    }
  }

  @override
  Component build(BuildContext context) {
    // This method is rerun every time the component is rebuilt.

    // Renders a <div class="main"> html element with children.
    return div(classes: 'main', [
      const Navbar(),
      const Hero(),
      const Home(),
      const About(),
      div(
        classes: "background",
        [
          img(
            classes: "build_with",
            src: AppImages.buildWith,
          ),
        ],
      ),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css(".main").styles(
      display: .block,
    ),
    css('.background').styles(
      display: .flex,
      position: .sticky(bottom: 0.px),
      height: 55.px,
      padding: Spacing.symmetric(
        horizontal: 24.px,
      ),
      justifyContent: .end,
      alignItems: .center,
      raw: {
        'background': """linear-gradient(
        to bottom,
        rgba(0, 102, 255, 0) 0%,
        rgba(0, 102, 255, 0.12) 40%,
        rgba(0, 102, 255, 0.35) 100%
    )""",
        ' -webkit-backdrop-filter': 'blur(20px)',
        'backdrop-filter': 'blur(5px)',
        'overflow': 'hidden',
      },
    ),
  ];
}
