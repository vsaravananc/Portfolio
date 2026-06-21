import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_portfolio/constants/images.dart';

class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes: "about",
      [
        div(classes: 'about_div container', [
          div(
            classes: 'profile',
            [
              img(classes: "about_profile_img", src: AppImages.profile),
              h2(
                classes: 'about_me',
                [
                  .text(" About Me"),
                ],
              ),
            ],
          ),
          p(
            classes: 'align_center',
            styles: Styles(
              display: .flex,
              padding: .only(left: 20.px),
              cursor: .defaultCursor,
              alignItems: .center,
              fontFamily: FontFamily('Roboto'),
              fontSize: 1.5.rem,
            ),
            [
              .text(
                "Passionate about building scalable digital products, turning complex requirements into simple, intuitive experiences through thoughtful architecture and problem solving",
              ),
            ],
          ),
        ]),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.about').styles(backgroundColor: Colors.white),
    css(".about_div").styles(
      display: .grid,
      height: 100.percent,
      padding: .symmetric(vertical: 15.px),
      gridTemplate: GridTemplate(
        columns: GridTracks(
          [
            GridTrack(TrackSize(30.percent)),
            GridTrack(TrackSize.auto),
          ],
        ),
      ),
    ),
    css('.about_me').styles(
      position: Position.absolute(top: 12.percent, right: 2.percent),
      padding: .symmetric(horizontal: 8.px, vertical: 2.px),
      margin: .unset,
      transform: Transform.rotate(345.deg),
      fontFamily: FontFamily('Pixelify Sans'),
      fontSize: 1.5.em,
      fontWeight: FontWeight.w500
    ),

    css(".profile").styles(
      position: Position.relative(),
      width: 100.percent,
      height: 100.percent,
      padding: .only(left: 24.px, right: 24.px, top: 8.px),
      overflow: .hidden,
    ),
    css('.about_profile_img').styles(
      display: .flex,
      width: 100.percent,
      height: .auto,
      radius: BorderRadius.vertical(
        top: .circular(30.rem),
      ),
    )
  ];
}
