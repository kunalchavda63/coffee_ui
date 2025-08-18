import 'dart:async';

import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/models/src/user_model/user_model.dart';
import 'package:coffe_ui/core/services/local_storage/sharedpreference_service.dart';
import 'package:coffe_ui/core/services/navigation/router.dart';
import 'package:coffe_ui/core/services/repositories/auth_repository.dart';
import 'package:coffe_ui/core/services/repositories/service_locator.dart';
import 'package:coffe_ui/core/utilities/utils.dart';
import 'package:coffe_ui/features/onboarding/onboarding.dart';
import 'package:coffe_ui/features/screens/home_screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setStatusBarDarkStyle();
  }

  Future<void> navigateNext() async{
    final bool isLoggedIn =  LocalPreferences().isAuth;
    if(isLoggedIn){
    final int? userId = LocalPreferences().userId;
    var response = await getIt<AuthRepository>().getUserData(userId!);
    if(response.success && response.data!=null){
      await Future.delayed(const Duration(seconds: 3));
      getIt<AppRouter>().pushReplacement(
          isLoggedIn ? HomeScreens(userModel: response.data) : Onboarding()
      );

    }
    else {
      logger.i(response.message);
    }

    }

  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() => navigateNext());

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          Center(
            child: CustomWidgets.customImageView(
              path: AssetImages.imgLogo,
              width: 121.13.r,
                height: 58.r,
              fit: BoxFit.cover
            )
          ),
          Positioned(
              child:CustomWidgets.customAnimationWrapper(
                duration: Duration(seconds: 2),
                curve: Curves.ease,
                animationType: AnimationTypes.slideFromLeft,
                child: CustomWidgets.customImageView(
                  path: AssetImages.imgTopRight,
                ),
              ) ),
          Positioned(
            bottom: 0,
              right: 0,
              child:CustomWidgets.customAnimationWrapper(
                duration: Duration(seconds: 2),
                curve: Curves.ease,
                animationType: AnimationTypes.slideFromRight,
                child: CustomWidgets.customImageView(
                  path: AssetImages.imgBottomRight,
                ),
              ) ),
        ],
      ),
    );
  }
}
