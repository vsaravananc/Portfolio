import 'package:jaspr/dom.dart';
import 'package:jaspr_portfolio/constants/color.dart';

@css
List<StyleRule> get styles => [
  css.import('https://fonts.googleapis.com/css?family=Roboto'),
  css('*, *::before, *::after').styles(boxSizing: .borderBox),
  css('html, body').styles(
    width: 100.percent,
    minHeight: 100.vh,
    padding: .zero,
    margin: .zero,
    fontFamily: const .list([
      FontFamily('Roboto'),
      FontFamilies.sansSerif,
      FontFamilies.uiSansSerif,
      FontFamilies.systemUi,
    ]),
    fontSize: 16.px,
    backgroundColor: AppColors.primary,
  ),
  css('h1').styles(
    margin: .unset,
    fontSize: 4.rem,
  ),
  css('.container').styles(
    maxWidth: 1120.px,
    padding: Spacing.symmetric(horizontal: 24.px),
    margin: Spacing.symmetric(horizontal: .auto),
    backgroundColor: AppColors.background,
  ),

  css('.hero_container').styles(
    maxWidth: 720.px,
    margin: Spacing.symmetric(horizontal: .auto),
    backgroundColor: Colors.transparent,
  ),

  css('.cursor_pointer').styles(cursor: .pointer),
];
