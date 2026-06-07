import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

class CountHiglight extends StatelessComponent {
  final String count;
  final String label;
  const CountHiglight({super.key, required this.count, required this.label});

  @override
  Component build(BuildContext context) {
    return div(classes: "count_highlight", [
      h3(classes: "count", [.text(count)]),
      h3(classes: "label", [.text(label)]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.count_highlight').styles(
      display: .flex,
      flexDirection: .column,
      justifyContent: .center,
      alignItems: .start,
      gap: Gap.row(5.px)
    ),
    css('.count').styles(
      margin: Spacing.zero,
      color: Colors.white,
      fontSize: 1.7.rem,
      fontWeight: FontWeight.w700,
    ),
    css('.label').styles(
      margin: Spacing.zero,
      color: Colors.white.withValues(alpha: 0.7),
      fontSize: 1.2.rem,
      fontWeight: FontWeight.normal,
    ),
  ];
}
