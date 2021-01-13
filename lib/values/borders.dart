part of values;

class Borders {
  static const InputBorder defaultBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.white,
      width: 0.0,
      style: BorderStyle.none,
    ),
  );

  static const InputBorder defaultPrimaryUnderlineBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      width: 1.5,
      color: AppColors.secondaryColor2,
    ),
  );
  static const BorderSide defaultPrimaryBorder = BorderSide(
    width: Sizes.WIDTH_0,
    style: BorderStyle.none,
  );
}
