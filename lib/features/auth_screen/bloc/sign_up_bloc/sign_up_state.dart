
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpLoading extends SignUpState {}


class SignUpSuccess extends SignUpState {

  SignUpSuccess(this.data);
  final Map<String,dynamic> data;
}

class SignUpFailure extends SignUpState{
  SignUpFailure(this.error);
  final String error;
}
