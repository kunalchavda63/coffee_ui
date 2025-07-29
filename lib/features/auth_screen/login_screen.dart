import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/services/navigation/router.dart';
import 'package:coffe_ui/core/services/repositories/service_locator.dart';
import 'package:coffe_ui/core/utilities/utils.dart';
import 'package:coffe_ui/features/auth_screen/access_location_screen.dart';
import 'package:coffe_ui/features/auth_screen/forgot_screen.dart';
import 'package:coffe_ui/features/auth_screen/sign_up_screen.dart';
import 'package:coffe_ui/features/screens/home_screens.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late Size size;



  @override
  void dispose() {
    logger.i("Login Screen Dispose : CoffeeUI");
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
                    data: AppStrings.logIn,
                    style: TextStyle(fontFamily: "Sen",fontSize: 30)
                ).padTop(118.r),
                Opacity(
                  opacity: 0.8,
                  child: CustomWidgets.customText(
                      data: AppStrings.pleaseSignIn,
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
                  colorFilter: ColorFilter.mode(AppColors.hex5e61,BlendMode.srcIn),
                ),
              )),

          Positioned(
              bottom: 0,
              child: CustomWidgets.customContainer(
            h: size.height/1.4,
            w: size.width,
            color: AppColors.white,
            borderRadius: BorderRadius.only(
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
                      style: TextStyle().s(14.sp).w(400).c(AppColors.hex3234).family(FontFamily.sen),
                      hintText: 'example@gmail.com',
                      hintStyle: TextStyle().s(14.sp).family(FontFamily.sen).w(400).c(AppColors.hexA0a5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(color: AppColors.transparent,
                        ),
                      )
                    ).padBottom(24.r),
                    CustomWidgets.customText(data: AppStrings.password.toUpperCase(),style:BaseStyle.s11w700.c(AppColors.black).family(FontFamily.sen)).padBottom(8.r),
                    CustomWidgets.customTextField(
                        style: TextStyle().s(14.sp).w(400).c(AppColors.hex3234).family(FontFamily.sen),

                        fillColor: AppColors.hexF0f5,
                        filled: true,
                        hintText: '**********',

                        obscureText: true,
                        hintStyle: TextStyle().s(14.sp).family(FontFamily.sen).w(400).c(AppColors.hexA0a5),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: AppColors.transparent,
                          ),
                        )
                    ).padBottom(24.r),
                    Row(
                      children: [
                        CustomWidgets.customCheckBox(
                            color: AppColors.white,
                            border: Border.all(color: AppColors.hexE3eb,width: 2),
                            borderRadius: BorderRadius.circular(5.r),
                            boxH: 20.r,
                            boxW: 20.r,
                            iconColor: AppColors.hex7e8a,
                            iconSize: 10
                        ).padRight(10.r),
                        CustomWidgets.customText(
                            data: AppStrings.rememberMe,
                            style: TextStyle().s(13.sp).c(AppColors.hex7e8a).family(FontFamily.sen)
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                            getIt<AppRouter>().push(ForgotScreen());
                            logger.i("Pushing : ${getIt<AppRouter>().navigatorKey.currentWidget}");
                          },
                          child: CustomWidgets.customText(
                              data: AppStrings.forgotPassword,
                              style: TextStyle().s(14.sp).c(AppColors.hexFf76).family(FontFamily.sen)
                          ),
                        )
                      ],
                    ).padBottom(29.r),
                    CustomWidgets.customButton(
                      onTap: ()async{
                        LocationPermission permission = await Geolocator.checkPermission();
                        if(permission == LocationPermission.denied || permission==LocationPermission.deniedForever){
                          getIt<AppRouter>().push(AccessLocationScreen());
                        }
                        else if(permission == LocationPermission.always || permission == LocationPermission.whileInUse){
                          getIt<AppRouter>().pushReplacement(HomeScreens());
                          logger.i("Pushing : ${getIt<AppRouter>().navigatorKey.currentWidget}");

                        }
                        else{
                          return;
                        }
                      },
                      label: AppStrings.logIn
                    ).padBottom(38.r),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomWidgets.customText(
                            data: AppStrings.doNotHaveAnAccount,
                            style: BaseStyle.s16w500.c(AppColors.hex6469).w(400)
                        ).padRight(10.r),
                        InkWell(
                          onTap: (){
                            logger.i('Pushing : Sign Up Screeb}');
                            getIt<AppRouter>().push(SignUpScreen());
                          },
                          child: CustomWidgets.customText(
                              data: AppStrings.signUp.toUpperCase(),
                              style: BaseStyle.s14w500.c(AppColors.hexFf76).w(700)
                          ),
                        )
                      ],
                    ).padBottom(27.r),
                    Center(
                      child: CustomWidgets.customText(
                        data: AppStrings.or,
                        style: BaseStyle.s16w500.c(AppColors.hex6469).w(400).family(FontFamily.sen)
                      ),
                    ).padBottom(22.r),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomWidgets.customCircleSvgIcon(
                            h: 62.r,
                            w: 62.r,
                            bgColor:AppColors.hex3959,
                            path: AssetIcons.icFacebook,
                            iconColor: AppColors.white,
                        padding: EdgeInsets.all(20.r)

                        ),
                        CustomWidgets.customCircleSvgIcon(
                            h: 62.r,
                            w: 62.r,
                            bgColor:AppColors.hex169c,
                            path: AssetIcons.icSkype,
                            iconColor: AppColors.white,
                            padding: EdgeInsets.all(20.r)
                        ),
                        CustomWidgets.customCircleSvgIcon(
                            h: 62.r,
                            w: 62.r,
                            bgColor:AppColors.black,
                            path: AssetIcons.icApple,
                            iconColor: AppColors.white,
                            padding: EdgeInsets.all(20.r)
                        ),
                      ],
                    )
                    
                  ],
                ).padTop(24.r).padH(24.r)
          )
          ),

        ],
      ),
    );
  }
}
