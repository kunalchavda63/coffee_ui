import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/app_ui/src/widgets/src/food_widget/back_button.dart';
import 'package:coffe_ui/core/app_ui/src/widgets/src/food_widget/food_item_card.dart';
import 'package:coffe_ui/core/app_ui/src/widgets/src/food_widget/restaurant_post.dart';
import 'package:coffe_ui/core/services/navigation/router.dart';
import 'package:coffe_ui/core/services/repositories/service_locator.dart';
import 'package:coffe_ui/core/utilities/utils.dart';
import 'package:coffe_ui/features/screens/restaturant_view.dart';
import 'package:flutter_svg/svg.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomWidgets.customAppBar(
        bgColor: AppColors.white,
        leading: const AppBarBackButton(),
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
                    style: const TextStyle().s(12.sp).c(AppColors.hex181C).w(700).family(FontFamily.sen),
                  ).padRight(7.r),
                  SvgPicture.asset(AssetIcons.icBottomTriangle,colorFilter: const ColorFilter.mode(AppColors.hexF58d, BlendMode.srcIn),),
                ],
              ),
            ),
            const Spacer(),
            CustomWidgets.customCircleSvgIcon(
              path: AssetIcons.icSearch,
              iconColor: AppColors.white,
              bgColor: AppColors.hex1212,
              padding: EdgeInsets.all(15.r),
            ).padRight(10.r),
            CustomWidgets.customCircleSvgIcon(
              path: AssetIcons.icFilter,
              bgColor: AppColors.hexEcf0,
                padding: EdgeInsets.all(15.r),
            ),

          ],
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.77,
                crossAxisCount: 2,
                  mainAxisSpacing: 21.r,
                  crossAxisSpacing: 21.r,
                ),
                itemCount: 4,
        
                itemBuilder:(context,index){
        
              return const FoodItemCard();
                },).padBottom(32.r),
            CustomWidgets.customText(
              data: AppStrings.openRestaurants,
              style: BaseStyle.s20w400.c(AppColors.hex3234),
            ).padBottom(16.r),
            ListView.builder(
              shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context,index){
              return GestureDetector(
                  onTap: (){
                    getIt<AppRouter>().push<dynamic>(const RestaurantView());
                  },
                  child: const RestaurantPost().padBottom(28.r),);
            },
            ),
        
          ],
        ).padH(24.r),
      ),
    );
  }
}


// todo add model in parameter

