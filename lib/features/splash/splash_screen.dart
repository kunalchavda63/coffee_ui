import 'dart:async';
import 'package:coffe_ui/core/app_ui/app_ui.dart';
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
  void initState() {
    super.initState();
    _checkAuth();
  }

  void _checkAuth() async {
    // Wait for 200ms to ensure SharedPreferences is ready
    await Future<void>.delayed(const Duration(milliseconds: 200));

    final bool auth = LocalPreferences().isAuth;
    logger.i('User is $auth');

    navigateNext(auth);
  }

  Future<void> navigateNext(bool isAuth) async {
    await Future<void>.delayed(const Duration(seconds: 2)); // splash animation

    if (isAuth) {
      final int? userId = LocalPreferences().userId;

      if (userId == null) {
        getIt<AppRouter>().pushReplacement<void>(const Onboarding());
        return;
      }

      final response = await getIt<AuthRepository>().getUserData(userId);

      if (response.success && response.data != null) {
        getIt<AppRouter>().pushReplacement<void>(
          HomeScreens(userModel: response.data),
        );
        return;
      } else {
        logger.e('Error: ${response.message}');
      }
    }

    // Default fallback → Onboarding
    getIt<AppRouter>().pushReplacement<void>(const Onboarding());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setStatusBarDarkStyle();
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
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              child:CustomWidgets.customAnimationWrapper(
                duration: const Duration(seconds: 2),
                curve: Curves.ease,
                animationType: AnimationTypes.slideFromLeft,
                child: CustomWidgets.customImageView(
                  path: AssetImages.imgTopRight,
                ),
              ), ),
          Positioned(
            bottom: 0,
              right: 0,
              child:CustomWidgets.customAnimationWrapper(
                duration: const Duration(seconds: 2),
                curve: Curves.ease,
                animationType: AnimationTypes.slideFromRight,
                child: CustomWidgets.customImageView(
                  path: AssetImages.imgBottomRight,
                ),
              ), ),
        ],
      ),
    );
  }
}
