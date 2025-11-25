import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/models/src/user_model/user_model.dart';
import 'package:coffe_ui/core/services/local_storage/sharedpreference_service.dart';
import 'package:coffe_ui/core/services/navigation/router.dart';
import 'package:coffe_ui/core/services/network/base/abstract_dio_manager.dart';
import 'package:coffe_ui/core/services/repositories/auth_repository.dart';
import 'package:coffe_ui/core/services/repositories/service_locator.dart';
import 'package:coffe_ui/core/utilities/utils.dart';
import 'package:coffe_ui/features/auth_screen/bloc/login_bloc/login_events.dart';
import 'package:coffe_ui/features/auth_screen/bloc/login_bloc/login_state.dart';
import 'package:coffe_ui/features/screens/home_screens.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent,LoginState>{

  LoginBloc({required this.authRepository}) : super(LoginInitial()){
    on<LoginSubmitted>(_onLoginSubmitted);
  }
  final AuthRepository authRepository;

  Future<void> _onLoginSubmitted(
      LoginSubmitted event,
      Emitter<LoginState> emit,
      ) async{
    emit(LoginLoading());

    try{
      final response = await authRepository.login(event.email,event.password);

      if(response.success){
        final data = response.data?['user_id'];
        final ApiResponse<UserModel>  user = await authRepository.getUserData(data as int);
        if(user.success && user.data != null){
          getIt<AppRouter>().pushReplacement<dynamic>(HomeScreens(userModel: user.data));
          logger.i(user.data?.toJson());
          await LocalPreferences().setAuth(true);
          await LocalPreferences().setUserId(data);
          }
          else{
            showErrorToast(user.message ?? 'Failed to fetch user data');
            emit(LoginFailure(user.message ?? 'Failed to fetch user data'));
            return;
        }

        logger.i(response.data);
        showSuccessToast('status code ${response.statusCode}\n${response.data}');
        emit(LoginSuccess(response.data ?? {}));
      }
       else{
        logger.e(response.message);
        showErrorToast('${response.message}');
         emit(LoginFailure(response.message ?? 'Login Failed'));
      }

    } on Exception catch (e){
      logger.e('Network Connection');
      emit(LoginFailure(e.toString()));
    }
  }
}