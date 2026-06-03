import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_portfolio/constants/color.dart';

class Shortcontent extends StatelessComponent {
  const Shortcontent({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'short_content',
      [],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css(".short_content").styles(
      display: .flex,
      height: 15.em,

      margin: Spacing.all(12.px),
      boxSizing: BoxSizing.borderBox,
      border: Border.all(
        style: BorderStyle.dashed,
        width: 2.px,
        color: AppColors.border,
      ),
      flexDirection: .column,
      justifyContent: .center,
      alignItems: .center,
      raw: {'width': 'calc(100vw - 24px)'},
    ),
  ];
}
