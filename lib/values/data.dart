part of values;

class Data {
  static List<OutfitrItemData> splashScreenItems = [
    OutfitrItemData(
      imagePath: ImagePath.SEAN_OPRY_HM_SM,
      backgroundColor: AppColors.accentOceanBlue200,
      borderRadius: AppRadius.northSemiCircleRadius,
    ),
    OutfitrItemData(
      imagePath: ImagePath.ISLAND_HAT,
      backgroundColor: AppColors.accentLightBrown200,
      borderRadius: AppRadius.northTearDropRadius,
    ),
    OutfitrItemData(
      imagePath: ImagePath.PRIYANKA_CHOPRA_SM,
      backgroundColor: AppColors.accentGreen,
      borderRadius: AppRadius.eastSemiCircleRadius,
    ),
    OutfitrItemData(
      imagePath: ImagePath.SUPER_DRY_SLIDES,
      backgroundColor: AppColors.accentLightPink50,
      borderRadius: AppRadius.noRadius,
    ),
    OutfitrItemData(
      imagePath: ImagePath.JEANS_JACKET,
      backgroundColor: AppColors.accentDullGreen,
      borderRadius: AppRadius.northTearDropRadius,
    ),
    OutfitrItemData(
      imagePath: ImagePath.BLUE_SUN_GLASSES,
      backgroundColor: AppColors.accentOceanBlue50,
      borderRadius: AppRadius.fullCircleRadius,
    ),
    OutfitrItemData(
      imagePath: ImagePath.RED_SHIRT,
      backgroundColor: AppColors.accentLightBrown50,
      borderRadius: AppRadius.northTearDropRadius,
    ),
    OutfitrItemData(
      imagePath: ImagePath.GUCCI_BAG,
      backgroundColor: AppColors.accentLightYellow,
      borderRadius: AppRadius.noRadius,
    ),
    OutfitrItemData(
      imagePath: ImagePath.SEAN_OPRY_SM,
      backgroundColor: AppColors.accentLightBrown10,
      borderRadius: AppRadius.westSemiCircleRadius,
    ),
    OutfitrItemData(
      imagePath: ImagePath.TRAVEL_BAG,
      backgroundColor: AppColors.accentOceanBlue100,
      borderRadius: AppRadius.southTearDropRadius,
    ),
    OutfitrItemData(
      imagePath: ImagePath.BILLIE_SM,
      backgroundColor: AppColors.accentLightPink100,
      borderRadius: AppRadius.fullCircleRadius,
    ),
    OutfitrItemData(
      imagePath: ImagePath.MARCEL_SLIDES,
      backgroundColor: AppColors.accentOceanBlue150,
      borderRadius: AppRadius.noRadius,
    ),
    OutfitrItemData(
      imagePath: ImagePath.YELLOW_JACKET,
      backgroundColor: AppColors.accentLightBrown100,
      borderRadius: AppRadius.noRadius,
    ),
    OutfitrItemData(
      imagePath: ImagePath.HIGH_HEELS,
      backgroundColor: AppColors.accentLightGreen10,
      borderRadius: AppRadius.northTearDropRadius,
    ),
    OutfitrItemData(
      imagePath: ImagePath.AMANDLA_SM,
      backgroundColor: AppColors.accentLightPink50,
      borderRadius: AppRadius.fullCircleRadius,
    ),
  ];

  static List<OnBoardingItemData> onBoardingItems = [
    OnBoardingItemData(
      title: StringConst.ONBOARDING_TITLE_1,
      description: StringConst.ONBOARDING_DESC_1,
      tag: StringConst.ONBOARDING_TAG_1,
      coverImagePath: ImagePath.SEAN_OPRY_HM_LG,
      buttonText: StringConst.NEXT,
      backgroundColor: AppColors.accentOceanBlue200,
    ),
    OnBoardingItemData(
      title: StringConst.ONBOARDING_TITLE_2,
      description: StringConst.ONBOARDING_DESC_2,
      tag: StringConst.ONBOARDING_TAG_2,
      coverImagePath: ImagePath.PRIYANKA_CHOPRA,
      buttonText: StringConst.NEXT,
      backgroundColor: AppColors.accentGreen,
      tagAlignment: TagAlignment.topRight,
    ),
    OnBoardingItemData(
      title: StringConst.ONBOARDING_TITLE_3,
      description: StringConst.ONBOARDING_DESC_3,
      tag: StringConst.ONBOARDING_TAG_3,
      coverImagePath: ImagePath.BILLIE_EILLISH,
      buttonText: StringConst.NEXT,
      backgroundColor: AppColors.accentLightPink100,
    ),
    OnBoardingItemData(
      title: StringConst.ONBOARDING_TITLE_4,
      description: StringConst.ONBOARDING_DESC_4,
      tag: StringConst.ONBOARDING_TAG_4,
      coverImagePath: ImagePath.AMANDLA_LG,
      buttonText: StringConst.GET_STARTED,
      buttonColor: AppColors.primaryColor,
      buttonTextColor: AppColors.white,
      backgroundColor: AppColors.accentLightPink200,
      tagAlignment: TagAlignment.topRight,
    ),
  ];
}
