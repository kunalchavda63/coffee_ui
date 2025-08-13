import '../../../../../../features/screens/add_cart_screen.dart';
import '../../../../../services/navigation/router.dart';
import '../../../../../services/repositories/service_locator.dart';
import '../../../../../utilities/utils.dart';
import '../../../../app_ui.dart';

// todo add model for food card

class FoodItemCard extends StatelessWidget {
  const FoodItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return
      CustomWidgets.customContainer(
          borderRadius: BorderRadius.circular(24.r),
          border: Border.all(color: AppColors.white,width: 2),
          color: AppColors.white,

          boxShadow: [
            BoxShadow(
                color: AppColors.hex969615,
                offset: Offset(12,12),
                blurRadius: 30.r,
                spreadRadius: 0.r
            ),
          ],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomWidgets.customContainer(
                  h: 84.r,
                  color: AppColors.hex98a8,
                  borderRadius: BorderRadius.circular(15.r)
              ).padBottom(15.r),
              CustomWidgets.customText(
                  data: AppStrings.burger,
                  style: BaseStyle.s15w700.c(AppColors.hex3234)
              ).padBottom(5.r),
              CustomWidgets.customText(
                  data: 'Kitchen',
                  style: TextStyle().s(13.sp).c(AppColors.hex6469).family(FontFamily.sen)
              ).padBottom(8.r),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomWidgets.customText(
                      data: "\$40",
                      style: TextStyle().s(16.sp).c(AppColors.hex3234).w(700).letter(-0.33).family(FontFamily.sen)
                  ),
                  CustomWidgets.customCircleSvgIcon(
                    bgColor: AppColors.hexF58d,
                    onTap: (){
                      logger.i('Pushing : Details Screen');
                      getIt<AppRouter>().push(AddCartScreen());
                    },
                    path: AssetIcons.icAdd,
                    h: 30.r,
                    w: 30.r,
                    iconColor: AppColors.white,
                  )

                ],
              )


            ],
          ).padH(14.r)

      );
  }
}
