import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_portfolio/constants/color.dart';
import 'package:jaspr_portfolio/constants/images.dart';
import 'package:jaspr_portfolio/constants/profile_data.dart' as profile_data;

class Hero extends StatelessComponent {
  const Hero({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes: "hero",
      [
        div(
          classes: "hero_container hero_main",
          [
            p(classes: "hero_header", [.text("Flutter Developer | Mobile app enthusiast")]),
            span(
              classes: "hero_greeting",
              [
                h1(
                  [.text("Hi, I'm")],
                ),

                span(classes: "hero_name_about_me", [
                  h1(
                    [.text(profile_data.profileData.name)],
                  ),

                  img(
                    classes: "img_social flutter",
                    src: AppImages.flutter,
                    height: 48,
                    width: 48,
                  ),
                  img(
                    classes: "img_social androidOS",
                    src: AppImages.androidOS,
                    height: 48,
                    width: 48,
                  ),
                  img(
                    classes: "img_social dart",
                    src: AppImages.dart,
                    height: 48,
                    width: 48,
                  ),
                  img(
                    classes: "img_social vscode",
                    src: AppImages.vsCode,
                    height: 48,
                    width: 48,
                  ),
                  img(
                    classes: "img_social firebase",
                    src: AppImages.firebase,
                    height: 48,
                    width: 48,
                  ),
                  img(
                    classes: "img_social gradle",
                    src: AppImages.gradle,
                    height: 48,
                    width: 48,
                  ),
                  img(
                    classes: "img_social iosOS",
                    src: AppImages.iosOS,
                    height: 48,
                    width: 48,
                  ),
                  img(
                    classes: "img_social postMan",
                    src: AppImages.postMan,
                    height: 48,
                    width: 48,
                  ),
                  img(
                    classes: "img_social swift",
                    src: AppImages.swift,
                    height: 48,
                    width: 48,
                  ),
                  span(
                    classes: "swiftUI_wrapper",
                    [
                      img(
                    classes: "img_social swiftUI",
                    src: AppImages.swiftUI,
                    height: 48,
                    width: 48,
                  ),
                      span(classes: 'swiftUI_YOE', [.text("SwiftUI with 0.6 YOE")]),
                    ],
                  ),
                ]),
              ],
            ),
            p(
              classes: "hero_content_text",
              [.text(profile_data.profileData.heroContent)],
            ),
            div(
              classes: "hero_buttons",
              [
                div(
                  classes: "primary_button cursor_pointer",
                  [
                    .text("Download CV"),
                    img(
                      src: 'images/download.svg',
                      width: 18,
                      height: 18,
                    ),
                  ],
                ),
                div(classes: "hero_button_divider", []),
                div(
                  classes: "social_links",
                  [
                    img(classes: "cursor_pointer", src: 'images/linkedin.svg', width: 28, height: 28),
                    img(classes: "cursor_pointer", src: 'images/github.svg', width: 28, height: 28),
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
    css('.hero').styles(
      display: .flex,
      position: .relative(),
      width: 100.percent,
      justifyContent: .center,
      alignItems: .center,
      backgroundColor: AppColors.background,
      raw: {
        'height': 'calc(100vh - 65px)',
        'max-height': 'calc(100dvh - 65px)',
        'min-height': '560px',
        'background-image': 'url(images/kolam-bg.svg)',
        'background-repeat': 'repeat',
        'background-size': '160px 160px',
      },
    ),
    css('.hero_main').styles(
      display: .flex,
      padding: Spacing.only(bottom: 45.px),
      cursor: .defaultCursor,
      flexDirection: .column,
      alignItems: .center,
      textAlign: .center,
      backgroundColor: Colors.transparent,
    ),
    css('.hero_header').styles(
      padding: Spacing.symmetric(horizontal: 8.px, vertical: 4.px),
      border: Border.all(
        style: .solid,
        color: AppColors.red,
        width: 1.8.px,
      ),
      radius: BorderRadius.circular(20.px),
      color: AppColors.red,
      fontSize: 0.8.rem,
      fontWeight: .w700,
    ),
    css('.hero_greeting').styles(display: .flex, flexDirection: .row, gap: Gap.column(8.px)),
    css('.hero_content_text').styles(
      fontSize: 1.rem,
      fontWeight: .w400,
      lineHeight: 1.57.rem,
    ),
    css('.hero_name_about_me').styles(
      cursor: .pointer,
      color: AppColors.primary,
      fontWeight: .w700,
      raw: {
        "background": """linear-gradient(
    90deg,
    #01589B,
    #48dbfb
  )""",

        "-webkit-background-clip": "text",
        "-webkit-text-fill-color": "transparent",
        "background-clip": "text",
      },
    ),
    css('.hero_buttons').styles(
      display: .flex,
      height: 38.px,
      margin: Spacing.only(top: 10.px),
      flexDirection: .row,
      gap: Gap.column(16.px),
    ),
    css(".primary_button").styles(
      display: .flex,
      padding: Spacing.symmetric(horizontal: 12.px),
      border: Border.all(
        style: .none,
      ),
      radius: BorderRadius.circular(20.px),
      justifyContent: .center,
      alignItems: .center,
      gap: .column(4.px),
      color: AppColors.white,
      fontSize: 0.9.rem,
      fontWeight: .w700,
      backgroundColor: AppColors.primary,
    ),
    css(".hero_button_divider").styles(
      width: 1.5.px,
      height: 100.percent,
      backgroundColor: AppColors.border,
    ),
    css(".social_links").styles(
      display: .flex,
      flexDirection: .row,
      alignItems: .center,
      gap: Gap.column(10.px),
    ),

    css(".img_social").styles(
      display: .block,
      position: .absolute(),
      opacity: 0,
      visibility: .hidden,
      raw: {'transition': 'opacity 0.6s ease, visibility 0.6s ease'},
    ),

    css(".hero_name_about_me:hover .img_social").styles(
      opacity: 1,
      visibility: .visible,
    ),

    css(".flutter").styles(
      position: .absolute(
        top: 9.em,
        left: 20.em,
      ),
    ),
    css(".androidOS").styles(
      position: .absolute(
        bottom: 12.em,
        left: 5.em,
      ),
    ),
    css(".dart").styles(
      position: .absolute(top: 4.em, left: .unset, right: .unset),
    ),
    css(".vscode").styles(
      position: .absolute(bottom: 4.em, left: .unset, right: .unset),
    ),
    css(".firebase").styles(
      position: .absolute(
        bottom: 8.em,
        left: 20.em,
      ),
    ),
    css(".gradle").styles(
      position: .absolute(
        top: 9.em,
        right: 20.em,
      ),
    ),
    css(".postMan").styles(
      position: .absolute(
        top: 2.em,
        left: 2.em,
      ),
    ),
    css(".iosOS").styles(
      position: .absolute(
        bottom: 8.em,
        right: 15.em,
      ),
    ),
    css(".swift").styles(
      position: .absolute(
        top: 20.em,
        right: 10.em,
      ),
    ),
    css(".swiftUI").styles(
      position: .absolute(
        top: 2.em,
        right: 2.em,
      ),
    ),

    css('.swiftUI_YOE').styles(
      position: .absolute(
        top: 6.5.em,
        right: 2.em,
      ),
      // zIndex: ZIndex(1),
      padding: Spacing.all(5.px),
      radius: BorderRadius.circular(8.px),
      opacity: 0,
      visibility: .hidden,
      color: Colors.white,
      fontSize: 12.px,
      fontWeight: .w400,
      backgroundColor: Colors.black.withOpacity(0.7),
      raw: {
        '-webkit-text-fill-color': 'white',
        '-webkit-background-clip': 'initial',
        'background-clip': 'initial',
        'transition': 'all 0.3s ease',
      },
    ),

    css('.swiftUI_wrapper:hover .swiftUI_YOE').styles(
      opacity: 1,
      visibility: .visible,
    ),

  ];
}
