import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/services/navigation/router.dart';
import 'package:coffe_ui/core/services/repositories/service_locator.dart';
import 'package:coffe_ui/core/utilities/utils.dart';
import 'package:coffe_ui/features/auth_screen/otp_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late Size size;



  @override
  void dispose() {
    logger.i("Login SCreen Dispose : CoffeUI");
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    logger.i("Size Initialized ");
    size = MediaQuery.of(context).size;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          CustomWidgets.customContainer(
              h: size.height,
              w: size.width,
              color: AppColors.hex1212,
              child: Column(
                children: [
                  CustomWidgets.customText(
                      data: AppStrings.signUp,
                      style: TextStyle().s(30.sp).w(700).family(FontFamily.sen)
                  ).padTop(118.r),
                  Opacity(
                    opacity: 0.8,
                    child: CustomWidgets.customText(
                        data: AppStrings.pleaseSignUpToGetStarted,
                        style: TextStyle().s(16.sp).family(FontFamily.sen)
                    ),
                  )
                ],
              )
          ),
          Positioned(
              child: CustomWidgets.customAnimationWrapper(
                duration: Duration(
                    seconds: 2
                ),
                curve: Curves.easeInOut,
                animationType: AnimationTypes.slideFromTop,
                child: SvgPicture.asset(
                    AssetIcons.icTopLeft
                ),
              )),
          Positioned(
              right: 0,
              child: CustomWidgets.customAnimationWrapper(
                duration: Duration(
                    seconds: 2
                ),
                curve: Curves.easeInOut,
                animationType: AnimationTypes.slideFromTop,
                child: SvgPicture.asset(
                  AssetIcons.icTopRightLine,
                  colorFilter: ColorFilter.mode(AppColors.hexFf76,BlendMode.srcIn),
                ),
              )),
          Positioned(
              top: 50.r,
              left: 24.r,
              child: CustomWidgets.customCircleSvgIcon(
                onTap: (){
                  getIt<AppRouter>().pop();
                  logger.i("Popping : ${getIt<AppRouter>().navigatorKey.currentState}");
                },
                h: 45.r,
                w: 45.r,
                fit: BoxFit.contain,
                padding: EdgeInsets.all(15.r),
                path: AssetIcons.icBack,
                bgColor: AppColors.white,
                iconColor: AppColors.hex5e61,
              )),

          Positioned.fill(
            top: size.height / 3.2, // Adjust based on design
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24.r, vertical: 24.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    commonField(
                      title: AppStrings.name,
                      hintText: 'john doe',
                      textInputType: TextInputType.name,
                    ),
                    commonField(
                      title: AppStrings.email,
                      textInputType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),
                    commonField(
                      title: AppStrings.password,
                      hintText: '* * * * * * *',
                      toggle: true,
                      textInputType: TextInputType.visiblePassword,
                    ),
                    commonField(
                      title: AppStrings.reTypePassword,
                      hintText: '* * * * * * *',
                      toggle: true,
                      textInputType: TextInputType.visiblePassword,
                    ),
                    CustomWidgets.customButton(
                      onTap: () {
                        logger.i("Pushing Otp Screen");
                        getIt<AppRouter>().push(OtpScreen());
                      },
                      label: AppStrings.signUp.toUpperCase(),
                    ).padBottom(38.r),
                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
  Widget commonField({
    String? title,
    String? hintText,
    TextInputType? textInputType,
    TextInputAction? textInputAction,
    bool? toggle,

}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomWidgets.customText(data: title?.toUpperCase() ?? 'Email',style:BaseStyle.s11w700.c(AppColors.black).family(FontFamily.sen)).padBottom(8.r),
        CustomWidgets.customTextField(
            fillColor: AppColors.hexF0f5,
            filled: true,
            obscureText: toggle,
            style: TextStyle().s(14.sp).w(400).c(AppColors.hex3234).family(FontFamily.sen),
            hintText: hintText??'example@gmail.com',
            hintStyle: TextStyle().s(14.sp).family(FontFamily.sen).w(400).c(AppColors.hexA0a5),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: AppColors.transparent,
              ),
            ),
          textInputType: textInputType,
          textInputAction: textInputAction,

        ).padBottom(30.r),
      ],
    );
  }
}
