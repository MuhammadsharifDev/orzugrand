
import 'package:flutter/material.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  const ThemeTextStyles({
    required this.appBarTitle,
    required this.buttonStyle,
    required this.regularCaption2,
    required this.regularCaption1,
    required this.regularFootnote,
    required this.regularSubheadline,
    required this.regularCallout,
    required this.regularBody,
    required this.regularHeadline,
    required this.regularTitle1,
    required this.regularTitle2,
    required this.regularTitle3,
    required this.regularLargeTitle,
    required this.bodyCaption2,
    required this.bodyCaption1,
    required this.bodyFootnote,
    required this.bodySubheadline,
    required this.bodyCallout,
    required this.bodyBody,
    required this.bodyHeadline,
    required this.bodyTitle1,
    required this.bodyTitle2,
    required this.bodyTitle3,
    required this.bodyLargeTitle,
    required this.title,
    required this.brandStyle,
    required this.regularSubtitle,
  });

  final TextStyle appBarTitle;
  final TextStyle buttonStyle;
  final TextStyle regularCaption2;
  final TextStyle regularCaption1;
  final TextStyle regularFootnote;
  final TextStyle regularSubheadline;
  final TextStyle regularCallout;
  final TextStyle regularBody;
  final TextStyle regularHeadline;
  final TextStyle regularTitle1;
  final TextStyle regularTitle2;
  final TextStyle regularTitle3;
  final TextStyle regularLargeTitle;
  final TextStyle bodyCaption2;
  final TextStyle bodyCaption1;
  final TextStyle bodyFootnote;
  final TextStyle bodySubheadline;
  final TextStyle bodyCallout;
  final TextStyle bodyBody;
  final TextStyle bodyHeadline;
  final TextStyle bodyTitle1;
  final TextStyle bodyTitle2;
  final TextStyle bodyTitle3;
  final TextStyle bodyLargeTitle;
  final TextStyle title;
  final TextStyle regularSubtitle;
  final TextStyle brandStyle;

  static const ThemeTextStyles light = ThemeTextStyles(
    appBarTitle: TextStyle(
      color: Color(0xFF101828),
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    brandStyle:TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w900,
    ),
    regularSubtitle: TextStyle(
      color: Colors.grey,
      fontSize: 17,
      fontWeight: FontWeight.w400,
    ),
    buttonStyle: TextStyle(
      color: Colors.white,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    regularBody: TextStyle(
      color: Color(0xFF101828),
      fontSize: 17,
      fontWeight: FontWeight.w400,
    ),
    regularCallout: TextStyle(
      color: Color(0xFF101828),
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    regularCaption1: TextStyle(
      color: Color(0xFF101828),
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    regularCaption2: TextStyle(
      color: Color(0xFF101828),
      fontSize: 11,
      fontWeight: FontWeight.w400,
    ),
    regularFootnote: TextStyle(
      color: Color(0xFF101828),
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    regularHeadline: TextStyle(
      color: Color(0xFF101828),
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    regularLargeTitle: TextStyle(
      color: Color(0xFF101828),
      fontSize: 34,
      fontWeight: FontWeight.w400,
    ),
    regularSubheadline: TextStyle(
      color: Color(0xFF101828),
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    regularTitle1: TextStyle(
      color: Color(0xFF101828),
      fontSize: 28,
      fontWeight: FontWeight.w400,
    ),
    regularTitle2: TextStyle(
      color: Color(0xFF101828),
      fontSize: 22,
      fontWeight: FontWeight.w400,
    ),
    regularTitle3: TextStyle(
      color: Color(0xFF101828),
      fontSize: 22,
      fontWeight: FontWeight.w400,
    ),
    bodyBody: TextStyle(
      color: Color(0xFF101828),
      fontSize: 17,
      fontWeight: FontWeight.w400,
    ),
    bodyCallout: TextStyle(
      color: Color(0xFF101828),
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodyCaption1: TextStyle(
      color: Color(0xFF101828),
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    bodyCaption2: TextStyle(
      color: Color(0xFF101828),
      fontSize: 11,
      fontWeight: FontWeight.w400,
    ),
    bodyFootnote: TextStyle(
      color: Color(0xFF101828),
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    bodyHeadline: TextStyle(
      color: Color(0xFF101828),
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    bodyLargeTitle: TextStyle(
      color: Color(0xFF101828),
      fontSize: 34,
      fontWeight: FontWeight.w400,
    ),
    bodySubheadline: TextStyle(
      color: Color(0xFF101828),
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    bodyTitle1: TextStyle(
      color: Color(0xFF101828),
      fontSize: 34,
      fontWeight: FontWeight.w400,
    ),
    bodyTitle2: TextStyle(
      color: Color(0xFF101828),
      fontSize: 28,
      fontWeight: FontWeight.w400,
    ),
    bodyTitle3: TextStyle(
      color: Color(0xFF101828),
      fontSize: 22,
      fontWeight: FontWeight.w400,
    ),
    title: TextStyle(
      color: Color(0xFF101828),
      fontSize: 28,
      fontWeight: FontWeight.w700,
    ),
  );
  static const ThemeTextStyles dark = ThemeTextStyles(
    appBarTitle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    brandStyle:TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w900,
    ),
    buttonStyle: TextStyle(
      color: Colors.white,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    regularSubtitle: TextStyle(
      color: Colors.grey,
      fontSize: 17,
      fontWeight: FontWeight.w400,
    ),
    regularBody: TextStyle(
      color: Colors.white,
      fontSize: 17,
      fontWeight: FontWeight.w400,
    ),
    regularCallout: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    regularCaption1: TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    regularCaption2: TextStyle(
      color: Colors.white,
      fontSize: 11,
      fontWeight: FontWeight.w400,
    ),
    regularFootnote: TextStyle(
      color: Colors.white,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    regularHeadline: TextStyle(
      color: Colors.white,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    regularLargeTitle: TextStyle(
      color: Colors.white,
      fontSize: 34,
      fontWeight: FontWeight.w400,
    ),
    regularSubheadline: TextStyle(
      color: Colors.white,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    regularTitle1: TextStyle(
      color: Colors.white,
      fontSize: 34,
      fontWeight: FontWeight.w400,
    ),
    regularTitle2: TextStyle(
      color: Colors.white,
      fontSize: 28,
      fontWeight: FontWeight.w400,
    ),
    regularTitle3: TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.w400,
    ),
    bodyBody: TextStyle(
      color: Colors.white,
      fontSize: 17,
      fontWeight: FontWeight.w400,
    ),
    bodyCallout: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodyCaption1: TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    bodyCaption2: TextStyle(
      color: Colors.white,
      fontSize: 11,
      fontWeight: FontWeight.w400,
    ),
    bodyFootnote: TextStyle(
      color: Colors.white,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    bodyHeadline: TextStyle(
      color: Colors.white,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    bodyLargeTitle: TextStyle(
      color: Colors.white,
      fontSize: 34,
      fontWeight: FontWeight.w400,
    ),
    bodySubheadline: TextStyle(
      color: Colors.white,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    bodyTitle1: TextStyle(
      color: Colors.white,
      fontSize: 34,
      fontWeight: FontWeight.w400,
    ),
    bodyTitle2: TextStyle(
      color: Colors.white,
      fontSize: 28,
      fontWeight: FontWeight.w400,
    ),
    bodyTitle3: TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.w400,
    ),
    title: TextStyle(
      color: Colors.white,
      fontSize: 28,
      fontWeight: FontWeight.w700,
    ),
  );

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? appBarTitle,
    TextStyle? buttonStyle,
    TextStyle? regularBody,
    TextStyle? regularCallout,
    TextStyle? regularCaption1,
    TextStyle? regularCaption2,
    TextStyle? regularFootnote,
    TextStyle? regularHeadline,
    TextStyle? regularLargeTitle,
    TextStyle? regularSubheadline,
    TextStyle? regularTitle1,
    TextStyle? regularTitle2,
    TextStyle? regularTitle3,
    TextStyle? bodyBody,
    TextStyle? bodyCallout,
    TextStyle? bodyCaption1,
    TextStyle? bodyCaption2,
    TextStyle? bodyFootnote,
    TextStyle? bodyHeadline,
    TextStyle? bodyLargeTitle,
    TextStyle? bodySubheadline,
    TextStyle? bodyTitle1,
    TextStyle? bodyTitle2,
    TextStyle? bodyTitle3,
    TextStyle? title,
    TextStyle? regularSubtitle,
    TextStyle? brandStyle,
  }) =>
      ThemeTextStyles(
        brandStyle: brandStyle??this.brandStyle,
        regularSubtitle: regularSubtitle ?? this.regularSubtitle,
        appBarTitle: appBarTitle ?? this.appBarTitle,
        buttonStyle: buttonStyle ?? this.buttonStyle,
        regularBody: regularBody ?? this.regularBody,
        regularCallout: regularCallout ?? this.regularCallout,
        regularCaption1: regularCaption1 ?? this.regularCaption1,
        regularCaption2: regularCaption2 ?? this.regularCaption2,
        regularFootnote: regularFootnote ?? this.regularFootnote,
        regularHeadline: regularHeadline ?? this.regularHeadline,
        regularLargeTitle: regularLargeTitle ?? this.regularLargeTitle,
        regularSubheadline: regularSubheadline ?? this.regularSubheadline,
        regularTitle1: regularTitle1 ?? this.regularTitle1,
        regularTitle2: regularTitle2 ?? this.regularTitle2,
        regularTitle3: regularTitle3 ?? this.regularTitle3,
        bodyBody: bodyBody ?? this.bodyBody,
        bodyCallout: bodyCallout ?? this.bodyCallout,
        bodyCaption1: bodyCaption1 ?? this.bodyCaption1,
        bodyCaption2: bodyCaption2 ?? this.bodyCaption2,
        bodyFootnote: bodyFootnote ?? this.bodyFootnote,
        bodyHeadline: bodyHeadline ?? this.bodyHeadline,
        bodyLargeTitle: bodyLargeTitle ?? this.bodyLargeTitle,
        bodySubheadline: bodySubheadline ?? this.bodySubheadline,
        bodyTitle1: bodyTitle1 ?? this.bodyTitle1,
        bodyTitle2: bodyTitle2 ?? this.bodyTitle2,
        bodyTitle3: bodyTitle3 ?? this.bodyTitle3,
        title: title ?? this.title,
      );

  @override
  ThemeExtension<ThemeTextStyles> lerp(
      ThemeExtension<ThemeTextStyles>? other, double t) {
    if (other is! ThemeTextStyles) {
      return this;
    }
    return ThemeTextStyles(
      brandStyle: TextStyle.lerp(brandStyle, other.brandStyle, t)!,
      regularSubtitle:
      TextStyle.lerp(regularSubtitle, other.regularSubtitle, t)!,
      appBarTitle: TextStyle.lerp(appBarTitle, other.appBarTitle, t)!,
      buttonStyle: TextStyle.lerp(buttonStyle, other.buttonStyle, t)!,
      regularBody: TextStyle.lerp(regularBody, other.regularBody, t)!,
      regularCallout: TextStyle.lerp(regularCallout, other.regularCallout, t)!,
      regularCaption1:
      TextStyle.lerp(regularCaption1, other.regularCaption1, t)!,
      regularCaption2:
      TextStyle.lerp(regularCaption2, other.regularCaption2, t)!,
      regularFootnote:
      TextStyle.lerp(regularFootnote, other.regularFootnote, t)!,
      regularHeadline:
      TextStyle.lerp(regularHeadline, other.regularHeadline, t)!,
      regularLargeTitle:
      TextStyle.lerp(regularLargeTitle, other.regularLargeTitle, t)!,
      regularSubheadline:
      TextStyle.lerp(regularSubheadline, other.regularSubheadline, t)!,
      regularTitle1: TextStyle.lerp(regularTitle1, other.regularTitle1, t)!,
      regularTitle2: TextStyle.lerp(regularTitle2, other.regularTitle2, t)!,
      regularTitle3: TextStyle.lerp(regularTitle3, other.regularTitle3, t)!,
      bodyBody: TextStyle.lerp(bodyBody, other.bodyBody, t)!,
      bodyCallout: TextStyle.lerp(bodyCallout, other.bodyCallout, t)!,
      bodyCaption1: TextStyle.lerp(bodyCaption1, other.bodyCaption1, t)!,
      bodyCaption2: TextStyle.lerp(bodyCaption2, other.bodyCaption2, t)!,
      bodyFootnote: TextStyle.lerp(bodyFootnote, other.bodyFootnote, t)!,
      bodyHeadline: TextStyle.lerp(bodyHeadline, other.bodyHeadline, t)!,
      bodyLargeTitle: TextStyle.lerp(bodyLargeTitle, other.bodyLargeTitle, t)!,
      bodySubheadline:
      TextStyle.lerp(bodySubheadline, other.bodySubheadline, t)!,
      bodyTitle1: TextStyle.lerp(bodyTitle1, other.bodyTitle1, t)!,
      bodyTitle2: TextStyle.lerp(bodyTitle2, other.bodyTitle2, t)!,
      bodyTitle3: TextStyle.lerp(bodyTitle3, other.bodyTitle3, t)!,
      title: TextStyle.lerp(title, other.title, t)!,
    );
  }
}