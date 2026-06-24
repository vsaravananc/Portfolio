import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_portfolio/constants/color.dart';

class FooterComponent extends StatelessComponent {
  const FooterComponent({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes: "footer_base",
      [
        div(
          classes: 'footer_content container',
          [
            div([
              h3([
                .text('Let\'s build'),
              ]),
              h2(
                styles: Styles(
                  color: AppColors.red,
                ),
                [
                  .text('incredible work together.'),
                ],
              ),
            ]),
            div([
              h3(styles: Styles(color: Colors.gray, fontWeight: .inherit), [.text('Get in touch')]),
              h3(styles: Styles(fontWeight: .inherit), [.text('v.saravanan.c@gmail.com')]),
            ]),
          ],
        ),
        h1(classes: 'footer_userName', [.text("SARAVANAN")]),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.footer_base').styles(
      display: .flex,
      height: 430.px,
      flexDirection: FlexDirection.column,
      justifyContent: .spaceBetween,
      backgroundColor: AppColors.background,
      raw: {
        'background-image': 'url(images/kolam-bg.svg)',
        'background-repeat': 'repeat',
        'background-size': '160px 160px',
      },
    ),
    css(".footer_content").styles(
      display: .grid,
      width: 100.percent,
      padding: .only(top: 18.px),
      justifyContent: .spaceAround,
      gridTemplate: GridTemplate(
        rows: GridTracks(
          [
            GridTrack(TrackSize.fr(1)),
            GridTrack(
              TrackSize.fr(1),
            ),
          ],
        ),
      ),
      gap: .row(20.px),
      backgroundColor: Colors.transparent,
    ),
    css(".footer_content h3,h2").styles(margin: .zero),
    css(".footer_userName").styles(
      display: .block,
      margin: .zero,
      textAlign: .center,
      fontSize: 10.vw,
      textDecoration: TextDecoration(style: TextDecorationStyle.double),
      letterSpacing: 3.5.vw,
      raw: {
        "background": "linear-gradient(to bottom, rgba(128, 128, 128, 1) 0%, rgba(0,0,0,0) 80%)",
        "-webkit-background-clip": "text",
        "-webkit-text-fill-color": "transparent",
        "background-clip": "text",
      },
    ),
  ];
}
