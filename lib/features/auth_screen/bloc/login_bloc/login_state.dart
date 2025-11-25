abstract class LoginState{}


class LoginInitial extends LoginState{}
class LoginLoading extends LoginState{}
class LoginSuccess extends LoginState{
  LoginSuccess(this.data);
  final Map<String,dynamic> data;
}
class LoginFailure extends LoginState{
  LoginFailure(this.error);
  final String error;

}
