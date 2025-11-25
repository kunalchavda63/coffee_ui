import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/services/navigation/router.dart';
import 'package:coffe_ui/core/services/repositories/service_locator.dart';
import 'package:coffe_ui/core/utilities/utils.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late Size size;



  @override
  void dispose() {
    logger.i('Otp Screen Dispose : CoffeUI');
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
                      data: AppStrings.verification,
                      style: const TextStyle().s(30.sp).w(700).family(FontFamily.sen),
                  ).padTop(118.r),
                  Opacity(
                    opacity: 0.8,
                    child: CustomWidgets.customText(
                        data: AppStrings.weHaveSentCode,
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
                  logger.i('Popping : ${getIt<AppRouter>().navigatorKey.currentWidget}');
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomWidgets.customText(data: AppStrings.code.toUpperCase(),style:BaseStyle.s11w700.c(AppColors.black).family(FontFamily.sen)).padBottom(8.r),
                          const Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomWidgets.customText(
                                data: AppStrings.resend,
                                style: BaseStyle.s14w500.c(AppColors.black).w(700).line(0.8),
                              ).padBottom(2.r),
                              CustomWidgets.customContainer(
                                h: 2,
                                w: 50,
                                color: AppColors.black,
                              ),


                            ],
                          ).padRight(5.r),
                          CustomWidgets.customText(data: AppStrings.inDot.toLowerCase(),style:BaseStyle.s11w700.c(AppColors.black).family(FontFamily.sen)).padBottom(8.r),
                        ],
                      ).padBottom(8.5.r),
                      PinCodeTextField(
                          appContext: context,
                          length:4,
                        enableActiveFill: true,
                        animationType: AnimationType.fade,
                        animationCurve: Curves.linear,
                        animationDuration: const Duration(milliseconds: 200),
                        keyboardType: TextInputType.number,
                        textStyle: const TextStyle().s(18.sp).c(AppColors.hex3234).w(700).family(FontFamily.sen),
                        pinTheme: PinTheme(

                          fieldHeight:57.r,
                          fieldWidth: 62.r,
                          activeColor: AppColors.hexF0f5,
                          inactiveColor: AppColors.hexF0f5,
                          selectedColor: AppColors.hexF0f5,
                          selectedFillColor: AppColors.hexF0f5,
                          inactiveFillColor: AppColors.hexF0f5,
                          activeFillColor: AppColors.hexF0f5,

                          shape: PinCodeFieldShape.box,
                          inactiveBorderWidth: 0,
                          activeBorderWidth: 0,
                          borderRadius: BorderRadius.circular(10),
                        ),


                      ).padBottom(30.r),
                      CustomWidgets.customButton(
                        label: AppStrings.verify.toUpperCase(),
                      ),
                    ],
                  ).padTop(24.r).padH(24.r),
              ),
          ),

        ],
      ),
    );
  }
}
