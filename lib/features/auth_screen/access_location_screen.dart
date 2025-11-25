import 'dart:developer';

import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/services/navigation/router.dart';
import 'package:coffe_ui/core/services/repositories/service_locator.dart';
import 'package:coffe_ui/core/utilities/utils.dart';
import 'package:coffe_ui/features/screens/home_screens.dart';

class AccessLocationScreen extends StatelessWidget {
  const AccessLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: CustomWidgets.customContainer(
              h: 250.r,
              w: 206.r,
              borderRadius: BorderRadius.circular(90.r),
              child: CustomWidgets.customAnimationWrapper(
                duration: const Duration(milliseconds: 800),
                animationType: AnimationTypes.fade,
                curve: Curves.decelerate,
                child: CustomWidgets.customImageView(
                  path: 'https://img.freepik.com/premium-vector/address-concept-illustration_86047-265.jpg?w=996',
                  sourceType: ImageType.network,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ).padBottom(93.5),
          CustomWidgets.customButton(
            onTap: ()async{
          try{
          final hasePermission = await takeLocationPermission();
          if(!hasePermission){
          return;
          }
          final position = await determinePosition();
          final places = await getListPlace(position);
          log(places.toString());
          getIt<AppRouter>().pushReplacement<dynamic>(const HomeScreens());

          } on Exception catch(e,s){
            logger.e(e);
            logger.e(s);
          }
            },
            icon: CustomWidgets.customCircleSvgIcon(
              path: AssetIcons.icLocation,
              bgColor: AppColors.white20,
              iconColor: AppColors.white,
              h: 32.r,
              w: 32.r,
              padding: EdgeInsets.all(8.r),
              fit: BoxFit.cover,
            ).padLeft(24.r),
            label: AppStrings.accessLocation.toUpperCase(),
          ).padH(24.r).padBottom(34.r),
          CustomWidgets.customText(
            textAlign: TextAlign.center,
            data: AppStrings.foodWillAccessYourLocation,
            style: BaseStyle.s16w500.c(AppColors.hex6469).w(400),
          ).padH(26.r),


        ],
      ),
    );
  }
}
