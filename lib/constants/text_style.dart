// ignore_for_file: constant_identifier_names

import 'package:assignment_test/constants/colors_app.dart';
import 'package:assignment_test/constants/dimension_app.dart';
import 'package:assignment_test/constants/fonts_app.dart';
import 'package:flutter/material.dart';

enum TextStyleApp {
  inter_s10_t_black,
  inter_s10_el_black,
  inter_s10_l_black,
  inter_s10_r_black,
  inter_s10_m_black,
  inter_s10_sb_black,
  inter_s10_b_black,
  inter_s10_eb_black,
  inter_s10_bl_black,
  inter_s12_b_white,
  inter_s12_b_grey,
  inter_s13_b_grey,
  inter_s13_b_grey1,
  inter_s13_b_black,
  inter_s14_b_grey,
  inter_s14_b_grey1,
  inter_s15_b_white,
  inter_s18_bl_white,
  inter_s25_b_b_primary, //weight = bold,
}

extension TextStyleExtension on TextStyleApp {
  TextStyle textStyle(
      {required Color color,
      required String familyFont,
      required double size,
      FontWeight? weight,
      TextDecoration? decoration}) {
    return TextStyle(
        color: color,
        fontFamily: familyFont,
        fontSize: size,
        fontWeight: weight,
        decoration: decoration);
  }

  TextStyle get style {
    final interT = FontsApp.interThin.font;
    final interEL = FontsApp.interExtraLight.font;
    final interL = FontsApp.interLight.font;
    final interR = FontsApp.interRegular.font;
    final interM = FontsApp.interMedium.font;
    final interSB = FontsApp.interSemiBold.font;
    final interB = FontsApp.interBlack.font;
    final interEB = FontsApp.interExtraBold.font;
    final interBl = FontsApp.interBlack.font;

    final weightB = FontWeight.bold;

    switch (this) {
      case TextStyleApp.inter_s10_t_black:
        return textStyle(
            color: ColorsApp.black,
            familyFont: interT,
            size: DimensionApp.size10);
      case TextStyleApp.inter_s10_el_black:
        return textStyle(
            color: ColorsApp.black,
            familyFont: interEL,
            size: DimensionApp.size10);
      case TextStyleApp.inter_s10_l_black:
        return textStyle(
            color: ColorsApp.black,
            familyFont: interL,
            size: DimensionApp.size10);
      case TextStyleApp.inter_s10_r_black:
        return textStyle(
            color: ColorsApp.black,
            familyFont: interR,
            size: DimensionApp.size10);
      case TextStyleApp.inter_s10_m_black:
        return textStyle(
            color: ColorsApp.black,
            familyFont: interM,
            size: DimensionApp.size10);
      case TextStyleApp.inter_s10_sb_black:
        return textStyle(
            color: ColorsApp.black,
            familyFont: interSB,
            size: DimensionApp.size10);
      case TextStyleApp.inter_s10_b_black:
        return textStyle(
            color: ColorsApp.black,
            familyFont: interB,
            size: DimensionApp.size10);
      case TextStyleApp.inter_s10_eb_black:
        return textStyle(
            color: ColorsApp.black,
            familyFont: interEB,
            size: DimensionApp.size10);
      case TextStyleApp.inter_s10_bl_black:
        return textStyle(
            color: ColorsApp.black,
            familyFont: interBl,
            size: DimensionApp.size10);
      case TextStyleApp.inter_s12_b_white:
        return textStyle(
            color: ColorsApp.white,
            familyFont: interB,
            size: DimensionApp.size12);
      case TextStyleApp.inter_s12_b_grey:
        return textStyle(
            color: ColorsApp.grey,
            familyFont: interB,
            size: DimensionApp.size12);
      case TextStyleApp.inter_s13_b_grey:
        return textStyle(
            color: ColorsApp.grey,
            familyFont: interB,
            size: DimensionApp.size13);
      case TextStyleApp.inter_s13_b_grey1:
        return textStyle(
            color: ColorsApp.grey1,
            familyFont: interB,
            size: DimensionApp.size13);
      case TextStyleApp.inter_s14_b_grey:
        return textStyle(
            color: ColorsApp.grey,
            familyFont: interB,
            size: DimensionApp.size14);
      case TextStyleApp.inter_s14_b_grey1:
        return textStyle(
            color: ColorsApp.grey1,
            familyFont: interB,
            size: DimensionApp.size14);
      case TextStyleApp.inter_s15_b_white:
        return textStyle(
            color: ColorsApp.white,
            familyFont: interB,
            size: DimensionApp.size15);
      case TextStyleApp.inter_s18_bl_white:
        return textStyle(
            color: ColorsApp.white,
            familyFont: interBl,
            size: DimensionApp.size18);
      case TextStyleApp.inter_s25_b_b_primary:
        return textStyle(
            color: ColorsApp.primary,
            familyFont: interBl,
            weight: weightB,
            size: DimensionApp.size25);
      default:
        return textStyle(
            color: ColorsApp.black,
            familyFont: interT,
            size: DimensionApp.size10);
    }
  }
}
