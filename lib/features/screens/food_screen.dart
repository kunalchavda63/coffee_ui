import 'package:coffe_ui/core/app_ui/src/widgets/src/food_widget/restaurant_post.dart';
import 'package:coffe_ui/core/services/navigation/router.dart';
import 'package:coffe_ui/core/services/repositories/service_locator.dart';
import 'package:coffe_ui/features/screens/add_cart_screen.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/app_ui/app_ui.dart';
import '../../core/utilities/utils.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomWidgets.customAppBar(
        bgColor: AppColors.white,
        leading: CustomWidgets.customCircleSvgIcon(
          path: AssetIcons.icBack,
          bgColor: AppColors.hexEcf0,
          iconColor: AppColors.hex181C,
          padding: EdgeInsets.all(15.r)
        ).padLeft(24.r),

        title: Row(
          children: [
            CustomWidgets.customContainer(
              h: 45.r,
              padding: EdgeInsets.symmetric(horizontal: 18.r),
              borderRadius: BorderRadius.circular(33.r),
              border: Border.all(color: AppColors.hexEcf0),
              alignment: Alignment.center,
              child: Row(
                children: [
                  CustomWidgets.customText(
                    data: AppStrings.burger.toUpperCase(),
                    style: TextStyle().s(12.sp).c(AppColors.hex181C).w(700).family(FontFamily.sen)
                  ).padRight(7.r),
                  SvgPicture.asset(AssetIcons.icBottomTriangle,colorFilter: ColorFilter.mode(AppColors.hexF58d, BlendMode.srcIn),),
                ],
              ),
            ),
            Spacer(),
            CustomWidgets.customCircleSvgIcon(
              path: AssetIcons.icSearch,
              iconColor: AppColors.white,
              bgColor: AppColors.hex1212,
              padding: EdgeInsets.all(15.r)
            ).padRight(10.r),
            CustomWidgets.customCircleSvgIcon(
              path: AssetIcons.icFilter,
              bgColor: AppColors.hexEcf0,
                padding: EdgeInsets.all(15.r)
            )

          ],
        )

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.77,
                crossAxisCount: 2,
                  mainAxisSpacing: 21.r,
                  crossAxisSpacing: 21.r
                ),
                itemCount: 4,
        
                itemBuilder:(context,index){
        
              return CustomWidgets.customContainer(
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
                }).padBottom(32.r),
            CustomWidgets.customText(
              data: AppStrings.openRestaurants,
              style: BaseStyle.s20w400.c(AppColors.hex3234)
            ).padBottom(16.r),
            ListView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context,index){
              return RestaurantPost();
            }
            )
        
          ],
        ).padH(24.r),
      ),
    );
  }
}


// todo add model in parameter

