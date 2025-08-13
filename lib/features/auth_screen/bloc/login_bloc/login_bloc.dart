import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/models/src/user_model/user_model.dart';
import 'package:coffe_ui/core/services/network/base/abstract_dio_manager.dart';
import 'package:coffe_ui/core/services/repositories/auth_repository.dart';
import 'package:coffe_ui/core/utilities/utils.dart';
import 'package:coffe_ui/features/auth_screen/bloc/login_bloc/login_events.dart';
import 'package:coffe_ui/features/auth_screen/bloc/login_bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/navigation/router.dart';
import '../../../../core/services/repositories/service_locator.dart';
import '../../../screens/home_screens.dart';

class LoginBloc extends Bloc<LoginEvent,LoginState>{
  final AuthRepository authRepository;

  LoginBloc({required this.authRepository}) : super(LoginInitial()){
    on<LoginSubmitted>(_onLoginSubmitted);
  }

  Future<void> _onLoginSubmitted(
      LoginSubmitted event,
      Emitter<LoginState> emit,
      ) async{
    emit(LoginLoading());

    try{
      final response = await authRepository.login(event.email,event.password);

      if(response.success){
        final data = response.data?["user_id"];
        final ApiResponse<UserModel>  user = await authRepository.getUserData(data);
        if(user.success && user.data != null){
          getIt<AppRouter>().pushReplacement(HomeScreens(userModel: user.data));
          logger.i(user.data?.toJson());

          }
          else{
            showErrorToast(user.message ?? 'Failed to fetch user data');
            emit(LoginFailure(user.message ?? 'Failed to fetch user data'));
            return;
        }

        logger.i(response.data);
        showSuccessToast("status code ${response.statusCode}\n${response.data}");
        emit(LoginSuccess(response.data ?? {}));
      }
       else{
        logger.e(response.message);
        showErrorToast("${response.message}");
         emit(LoginFailure(response.message ?? 'Login Failed'));
      }

    } catch (e){
      logger.e('Network Connection');
      emit(LoginFailure(e.toString()));
    }
  }
}