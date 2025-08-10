import 'package:coffe_ui/core/models/src/user_model/user_model.dart';
import 'package:coffe_ui/core/services/repositories/auth_repository.dart';
import 'package:coffe_ui/features/auth_screen/bloc/sign_up_bloc/sign_up_event.dart';
import 'package:coffe_ui/features/auth_screen/bloc/sign_up_bloc/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBloc extends Bloc<SignUpEvent,SignUpState>{
  final AuthRepository authRepository;
  SignUpBloc({required this.authRepository}) : super(SignUpInitial()){
    on<SignUpSubmitted>(_onSignUpSubmitted);
  }

  Future<void> _onSignUpSubmitted(
      SignUpSubmitted event,
      Emitter<SignUpState> emit,
      ) async{
    emit(SignUpLoading());

    try{
      final response = await authRepository.createAccount(event.userModel);
      if(response.success){
        emit(SignUpSuccess((response.data??{})));
    } else{
      emit(SignUpFailure(response.message ?? 'Sign Up Failed'));}
    }
    catch(e){
      emit(SignUpFailure(e.toString()));
    }
  }

}