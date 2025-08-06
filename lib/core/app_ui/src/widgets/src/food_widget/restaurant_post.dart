import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/models/src/category_post_model/category_post_model.dart';
import 'package:coffe_ui/core/utilities/src/strings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RestaurantPost extends StatelessWidget {
  final CategoryPostModel? categoryPostModel;
  const RestaurantPost({
    super.key,
    this.categoryPostModel
  });

  @override
  Widget build(BuildContext context) {
    return CustomWidgets.customContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomWidgets.customContainer(
            h: 137.r,
            color: AppColors.hex98a8,
            borderRadius: BorderRadius.circular(10.r),
          ).padBottom(5.r),
          CustomWidgets.customText(
              data: categoryPostModel?.title??'Rose Garden Restaurant',
              style: BaseStyle.s20w400.c(AppColors.hex181C)
          ).padBottom(5.r),
          CustomWidgets.customText(
              data: 'Burger - Chicken - Riche - Wings',
              style: BaseStyle.s14w500.c(AppColors.hexA0a5).w(400)
          ).padBottom(5.r),
          Row(
            children: [
              Row(
                children: [
                  SvgPicture.asset(AssetIcons.icStart).padRight(4.r),
                  CustomWidgets.customText(
                    data: categoryPostModel?.rate.toStringAsFixed(2) ?? '0.0',
                    style: BaseStyle.s16w500.c(AppColors.hex181C).w(700)
                  )

                ],
              ).padRight(24.r),
              Row(
                children: [
                  SvgPicture.asset(AssetIcons.icTruck),
                  CustomWidgets.customText(
                    data: categoryPostModel?.price.toString()??AppStrings.free,
                    style: BaseStyle.s14w500.c(AppColors.hex181C)
                  ).padLeft(9.r)

                ],
              ).padRight(24.r),
              Row(
                children: [
                  SvgPicture.asset(AssetIcons.icClock).padRight(9.r),
                  CustomWidgets.customText(
                    // format for time  - Hour -- Min --- Second
                    data: categoryPostModel?.duration.toString()??'20 min',
                    style: BaseStyle.s14w500.c(AppColors.hex181C) 
                  )

                ],
              ).padRight(24.r)

            ],
          )

        ],
      )


    );
  }
}
