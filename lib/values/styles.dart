part of 'values.dart';

class Styles {
  static TextStyle customTextStyle({
    Color color = AppColors.primaryText,
    FontWeight fontWeight = FontWeight.w600,
    double fontSize = Sizes.TEXT_SIZE_14,
    FontStyle fontStyle: FontStyle.normal,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle customTextStyle2({
    Color color = AppColors.primaryText,
    FontWeight fontWeight = FontWeight.w600,
    double fontSize = Sizes.TEXT_SIZE_16,
    FontStyle fontStyle: FontStyle.normal,
  }) {
    return GoogleFonts.roboto(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle outfitrTextFieldHintStyle = TextStyle(
    fontFamily: StringConst.FONT_FAMILY,
    fontSize: Sizes.TEXT_SIZE_16,
    color: AppColors.grey20,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static TextStyle outfitrTextFieldStyle = TextStyle(
    fontFamily: StringConst.FONT_FAMILY,
    fontSize: Sizes.TEXT_SIZE_16,
    color: AppColors.black,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
}
