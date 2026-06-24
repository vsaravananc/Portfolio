import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_portfolio/constants/images.dart';
import 'package:jaspr_portfolio/pages/footer.dart';
import 'package:jaspr_portfolio/pages/hero.dart';
import 'package:jaspr_portfolio/pages/navbar.dart';
import 'package:jaspr_portfolio/pages/shortcontent.dart';

import 'pages/about.dart';

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
  Component build(BuildContext context) {
    return div(classes: 'main', [
      const Navbar(),
      const Hero(),
      const Shortcontent(),
      const About(),
      const FooterComponent(),
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
      position: .relative()
    ),
    css('.background').styles(
      display: .flex,
      position: .fixed(bottom: 0.px, left: 0.px, right: 0.px),
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
