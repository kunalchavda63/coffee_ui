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
        getIt<AppRouter>().pushReplacement(HomeScreens());

        logger.i(response.data);
        emit(LoginSuccess(response.data ?? {}));
      }
       else{
        logger.e(response.message);
         emit(LoginFailure(response.message ?? 'Login Failed'));
      }

    } catch (e){
      logger.e(e.toString());
      emit(LoginFailure(e.toString()));
    }
  }
}