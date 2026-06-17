import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes: "about",
      [
        div(classes: 'about_div container', [
          div(
            classes: 'align_center profile',
            [
              h2(
                classes: "about_me",
                [
                  .text(" About Me"),
                ],
              ),
            ],
          ),
          p(
            classes: 'align_center',
            styles: Styles(
              padding: .only(left: 20.px),
              fontFamily: FontFamily('Roboto'),
              fontSize: 1.8.rem,
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
    css('.about').styles(height: 360.px, backgroundColor: Colors.white),
    css(".about_div").styles(
      display: .grid,
      height: 100.percent,
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
      padding: .symmetric(horizontal: 8.px, vertical: 2.px),
      margin: .unset,
      radius: BorderRadius.circular(999.px),
      transform: Transform.rotate(345.deg),
      fontFamily: FontFamily('Pixelify Sans'),
      fontSize: 14.px,
      fontWeight: FontWeight.w500,
      backgroundColor: Colors.gray.withOpacity(0.3)
    ),
    css(".profile").styles(
      width: 100.percent,
      height: 100.percent
    ),
    css(".align_center").styles(display: .flex, alignItems: .center)
  ];
}
