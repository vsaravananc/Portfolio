import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_portfolio/components/count_higlight.dart';

class Shortcontent extends StatelessComponent {
  const Shortcontent({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes: "short_content_container",
      [
        div(
      classes: 'short_content',
          [
            CountHiglight(count: "5 +", label: "App Shipped"),
            span(classes: "divider", []),
            CountHiglight(count: "1.7 Years", label: "Flutter Experience"),
            // CountHiglight(count: "0.7 Years", label: "SwiftUI Experience"),
            span(classes: "divider", []),
            CountHiglight(count: "100K +", label: "Users Impacted"),
          ],
        ),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css(".short_content_container").styles(
      padding: Spacing.all(12.px),
      raw: {
        "background": "#315273",
        "background":
            "linear-gradient(175deg, rgba(49, 82, 115, 1) 0%, rgba(0, 0, 0, 1) 50%, rgba(76, 97, 105, 1) 100%)",
      },
    ),
    css(".short_content").styles(
      display: .flex,
      height: 8.em,
      boxSizing: BoxSizing.borderBox,
      border: Border.all(
        style: BorderStyle.dashed,
        width: 2.px,
        color: Colors.gray.withValues(alpha: 0.4),
      ),
      flexDirection: .row,
      justifyContent: .spaceEvenly,
      alignItems: .center,
      backgroundColor: Colors.transparent,
      raw: {'width': 'calc(100vw - 24px)'},
    ),
    css(".divider").styles(
      width: 1.px,
      height: 100.percent,
      border: Border.only(
        left: BorderSide(
          style: BorderStyle.dashed,
          width: 2.px,
          color: Colors.gray.withValues(alpha: 0.4),
        ),
      ),
    ),
  ];
}
