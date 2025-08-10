import 'package:coffe_ui/core/models/src/user_model/user_model.dart';

abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpLoading extends SignUpState {}


class SignUpSuccess extends SignUpState {
  final Map<String,dynamic> data;

  SignUpSuccess(this.data);
}

class SignUpFailure extends SignUpState{
  final String error;
  SignUpFailure(this.error);
}
