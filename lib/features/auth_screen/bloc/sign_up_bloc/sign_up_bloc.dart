import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/models/src/user_model/user_model.dart';
import 'package:coffe_ui/core/services/navigation/router.dart';
import 'package:coffe_ui/core/services/repositories/auth_repository.dart';
import 'package:coffe_ui/features/auth_screen/bloc/sign_up_bloc/sign_up_event.dart';
import 'package:coffe_ui/features/auth_screen/bloc/sign_up_bloc/sign_up_state.dart';
import 'package:coffe_ui/features/screens/home_screens.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/network/base/abstract_dio_manager.dart';
import '../../../../core/services/repositories/service_locator.dart';
import '../../../../core/utilities/src/extensions/logger/logger.dart';

class SignUpBloc extends Bloc<SignUpEvent,SignUpState>{
  final AuthRepository authRepository;
  SignUpBloc({required this.authRepository}) : super(SignUpInitial()){
    on<SignUpSubmitted>(onSignUpSubmitted);
  }

  Future<void> onSignUpSubmitted(
      SignUpSubmitted event,
      Emitter<SignUpState> emit,
      ) async{
    emit(SignUpLoading());

    try{
      final response = await authRepository.createAccount(event.userModel);
      if (response.success) {
        final data = response.data?["user_id"];
        final ApiResponse<UserModel> user = await authRepository.getUserData(data);
        if (user.success && user.data != null) {
           getIt<AppRouter>().pushReplacement(HomeScreens(userModel: user.data));
           logger.i(user.data?.toJson());
        } else  {
          logger.i(user.message);
        }
        emit(SignUpSuccess((response.data ?? {})));
      }
      else{
        showErrorToast(response.message.toString());
        logger.e(response.message);
      emit(SignUpFailure(response.message ?? 'Sign Up Failed'));}
    }
    catch(e){
      showErrorToast(e.toString());

      emit(SignUpFailure(e.toString()));
    }
  }

}