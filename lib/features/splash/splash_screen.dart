import 'dart:async';

import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/services/navigation/router.dart';
import 'package:coffe_ui/core/services/repositories/service_locator.dart';
import 'package:coffe_ui/core/utilities/utils.dart';
import 'package:coffe_ui/features/onboarding/onboarding.dart';

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

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),(){
        getIt<AppRouter>().pushReplacement(
             Onboarding());
    }
    );
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
