import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/services/navigation/router.dart';
import 'package:coffe_ui/core/services/repositories/service_locator.dart';
import 'package:coffe_ui/core/utilities/utils.dart';
import 'package:coffe_ui/features/auth_screen/otp_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  late Size size;



  @override
  void dispose() {
    logger.i('Login SCreen Dispose : CoffeUI');
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    logger.i('Size Initialized ');
    size = MediaQuery.of(context).size;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          CustomWidgets.customContainer(
              h: size.height,
              w: size.width,
              color: AppColors.hex1212,
              child: Column(
                children: [
                  CustomWidgets.customText(
                      data: AppStrings.forgotPassword,
                      style: const TextStyle().s(30.sp).w(700).family(FontFamily.sen),
                  ).padTop(118.r),
                  Opacity(
                    opacity: 0.8,
                    child: CustomWidgets.customText(
                        data: AppStrings.pleaseSignIn,
                        style: const TextStyle().s(16.sp).family(FontFamily.sen),
                    ),
                  ),
                ],
              ),
          ),
          Positioned(
              child: CustomWidgets.customAnimationWrapper(
                duration: const Duration(
                    seconds: 2,
                ),
                curve: Curves.easeInOut,
                animationType: AnimationTypes.slideFromTop,
                child: SvgPicture.asset(
                    AssetIcons.icTopLeft,
                ),
              ),),
          Positioned(
              right: 0,
              child: CustomWidgets.customAnimationWrapper(
                duration: const Duration(
                    seconds: 2,
                ),
                curve: Curves.easeInOut,
                animationType: AnimationTypes.slideFromTop,
                child: SvgPicture.asset(
                  AssetIcons.icTopRightLine,
                  colorFilter: const ColorFilter.mode(AppColors.hexFf76,BlendMode.srcIn),
                ),
              ),),
          Positioned(
            top: 50.r,
              left: 24.r,
              child: CustomWidgets.customCircleSvgIcon(
                onTap: (){
                  getIt<AppRouter>().pop<dynamic>();
                  logger.i('Popping : ${getIt<AppRouter>().navigatorKey.currentState}');
                },
                h: 45.r,
                w: 45.r,
                fit: BoxFit.contain,
                padding: EdgeInsets.all(15.r),
                path: AssetIcons.icBack,
                bgColor: AppColors.white,
                iconColor: AppColors.hex5e61,
          ),),

          Positioned(
              bottom: 0,
              child: CustomWidgets.customContainer(
                  h: size.height/1.4,
                  w: size.width,
                  color: AppColors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomWidgets.customText(data: AppStrings.email.toUpperCase(),style:BaseStyle.s11w700.c(AppColors.black).family(FontFamily.sen)).padBottom(8.r),
                      CustomWidgets.customTextField(
                          fillColor: AppColors.hexF0f5,
                          filled: true,
                          style: const TextStyle().s(14.sp).w(400).c(AppColors.hex3234).family(FontFamily.sen),
                          hintText: 'example@gmail.com',
                          hintStyle: const TextStyle().s(14.sp).family(FontFamily.sen).w(400).c(AppColors.hexA0a5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: const BorderSide(color: AppColors.transparent,
                            ),
                          ),
                      ).padBottom(30.r),
                      CustomWidgets.customButton(
                        onTap: (){
                          logger.i('Pusing Otp Screen');
                          getIt<AppRouter>().push<dynamic>(const OtpScreen());
                        },
                          label: AppStrings.sendCode.toUpperCase(),
                      ).padBottom(38.r),
                    ],
                  ).padTop(24.r).padH(24.r),
              ),
          ),

        ],
      ),
    );
  }
}
