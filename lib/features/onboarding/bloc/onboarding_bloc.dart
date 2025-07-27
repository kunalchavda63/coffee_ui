import 'package:coffe_ui/features/onboarding/bloc/onboarding_event.dart';
import 'package:coffe_ui/features/onboarding/bloc/onboarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingBloc extends Bloc<OnboardingEvent,OnboardingState>{
  OnboardingBloc():super(OnboardingState(currentPage: 0)){
    on<PageChangedEvent>((event,emit){
      emit(OnboardingState(currentPage: event.pageIndex));
    });
  }
}