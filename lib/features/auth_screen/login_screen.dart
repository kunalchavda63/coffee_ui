import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/utilities/src/strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late Size size;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
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
                    style: TextStyle().s(30.sp).w(700).family(FontFamily.sen)
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
              child: CustomWidgets.customImageView(
                path: AssetImages.imgTopLeft,
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
                        //todo add custom Check box Create
                        CustomWidgets.customContainer(
                          h: 20.r,
                          w: 20.r,
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(color: AppColors.hexE3eb,width: 2),
                        ).padRight(10.r),
                        CustomWidgets.customText(
                            data: AppStrings.rememberMe,
                            style: TextStyle().s(13.sp).c(AppColors.hex7e8a).family(FontFamily.sen)
                        ),
                        Spacer(),
                        CustomWidgets.customText(
                            data: AppStrings.forgotPassword,
                            style: TextStyle().s(14.sp).c(AppColors.hexFf76).family(FontFamily.sen)
                        )
                      ],
                    ).padBottom(29.r),
                    CustomWidgets.customButton(
                      label: AppStrings.logIn
                    ).padBottom(38.r),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomWidgets.customText(
                            data: AppStrings.doNotHaveAnAccount,
                            style: BaseStyle.s16w500.c(AppColors.hex6469).w(400)
                        ).padRight(10.r),
                        CustomWidgets.customText(
                            data: AppStrings.signUp.toUpperCase(),
                            style: BaseStyle.s14w500.c(AppColors.hexFf76).w(400)
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
