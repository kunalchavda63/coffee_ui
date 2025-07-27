import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/services/navigation/router.dart';
import 'package:coffe_ui/core/services/repositories/service_locator.dart';
import 'package:coffe_ui/core/utilities/utils.dart';
import 'package:coffe_ui/features/auth_screen/login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/onboarding_bloc.dart';
import 'bloc/onboarding_event.dart';
import 'bloc/onboarding_state.dart';

class Onboarding extends StatelessWidget {
  Onboarding({super.key});

  final PageController _controller = PageController();

  final List<OnboardingModel> _onboardingData = [
    OnboardingModel(AppStrings.allUFavorites, AppStrings.getAllYourLoved),
    OnboardingModel(AppStrings.allUFavorites, AppStrings.getAllYourLoved),
    OnboardingModel(AppStrings.orderFromChooseChef, AppStrings.getAllYourLoved),
    OnboardingModel(AppStrings.freeDeliveryOffers, AppStrings.getAllYourLoved),
  ];

  Widget _buildPage({
    required String title,
    required String subtitle,
  }) {
    return Column(
      children: [
        Center(
          child: CustomWidgets.customContainer(
            h: 292.r,
            color: AppColors.hex98ab,
            borderRadius: BorderRadius.circular(12.r),
          ),
        ).padTop(114.r).padH(60.r).padBottom(63.r),
        CustomWidgets.customText(
          data: title,
          style: BaseStyle.s24800.letter(1.2),
        ).padBottom(18.r),
        CustomWidgets.customText(
          data: subtitle,
          style: BaseStyle.s16w500
              .letter(1)
              .w(400)
              .c(AppColors.hex6469)
              .family(FontFamily.sen),
          textAlign: TextAlign.center,
        ).padBottom(18.r).padH(20.r),
      ],
    );
  }

  Widget _buildPageIndicator(int currentPage) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        _onboardingData.length,
            (index) => AnimatedContainer(
          duration: Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 4.r),
          height: 10.r,
          width: 10.r,
          decoration: BoxDecoration(
            color: currentPage == index
                ? AppColors.hexFf76
                : AppColors.hexFfe1,
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
      ),
    ).padBottom(69.r);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: PageView.builder(
                    
                    padEnds: false,
                    pageSnapping: true,
                    controller: _controller,
                    itemCount: _onboardingData.length,
                    onPageChanged: (index) {
                      context.read<OnboardingBloc>().add(
                          PageChangedEvent(index));
                    },
                    itemBuilder: (context, index) {
                      final data = _onboardingData[index];
                      return _buildPage(
                        title: data.title,
                        subtitle: data.subTitle,
                      );
                    },
                  )
              ),
                    _buildPageIndicator(state.currentPage),

              CustomWidgets
                  .customButton(
                label:state.currentPage==3 ?
                'GET STARTED'
                    :
                AppStrings.next.toUpperCase(),
                onTap: (){
                  if(state.currentPage==3){
                    logger.i('Pushing Login Screen');
                    getIt<AppRouter>().pushReplacement(LoginScreen());
                  }
                }
              )
                  .padH(24.r)
                  .padBottom(16.r),
              InkWell(
                  onTap: (){
                    logger.d('User Skip ');
                    if(state.currentPage!=3) {
                      _controller.animateToPage(3, duration:const Duration(milliseconds: 500), curve: Curves.easeInOut);
                    }
                  },

                  child: CustomWidgets.customText(data: state.currentPage<3?AppStrings.skip:'',style: BaseStyle.s16w500.c(AppColors.hex6469)).padBottom(40.r))
            ],
          );
        }
      ),
    );
  }
}


class OnboardingModel {
  final String title;
  final String subTitle;
  OnboardingModel(
      this.title,
      this.subTitle,
      );
}