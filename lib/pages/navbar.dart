import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_portfolio/constants/color.dart';

class Navbar extends StatelessComponent {
  const Navbar({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes: "nav_header",
      [
        div(
          classes: 'nav_place container',
          [
            p(
              classes: 'nav_title',
              [
                .text("Flutter Developer"),
              ],
            ),
            ul(
              classes: "nav_ul",
              [
                li(
                  [
                    .text('About'),
                  ],
                ),
                li(
                  [
                    .text('Project'),
                  ],
                ),
                li(
                  [
                    .text('Contact'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css(".nav_header").styles(
      display: .flex,
      position: .sticky(top: 0.px),
      zIndex: ZIndex(100),
      width: 100.percent,
      height: 65.px,
      border: Border.only(
        bottom: BorderSide(
          width: 1.px,
          color: AppColors.border,
          style: .solid,
        ),
      ),
      shadow: BoxShadow(
        offsetX: 0.px,
        offsetY: 0.px,
        blur: 10.px,
        color: AppColors.border,
      ),
      backgroundColor: AppColors.background,
    ),
    css('.nav_place').styles(
      display: .flex,
      width: 100.percent,
      height: 64.px,
      flexDirection: .row,
      justifyContent: .spaceBetween,
      alignItems: .center,
    ),
    css(".nav_title").styles(
      alignContent: .center,
      color: AppColors.primary,
      fontFamily: FontFamilies.arial,
      fontSize: 1.2.em,
      fontWeight: .w500,
    ),
     css(".nav_title:hover").styles(
      cursor: .pointer,
      alignContent: .center,
      color: AppColors.primary,
      fontFamily: FontFamilies.arial,
      fontSize: 1.2.em,
      fontWeight: .w500,
    ),
    css(".nav_ul").styles(
      display: .flex,
      padding: .all(0.px),
      flexDirection: .row,
      gap: .column(20.px),
      listStyle: .none,
    ),
    css("li").styles(alignContent: .center, color: AppColors.disable),
    css('li:hover').styles(
      cursor: .pointer,
      color: AppColors.red,
      fontWeight: .w500,
    ),
  ];
}
