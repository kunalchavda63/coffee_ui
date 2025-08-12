import 'package:coffe_ui/core/models/src/user_model/user_model.dart';

abstract class SignUpEvent {}

class SignUpSubmitted extends SignUpEvent{
  final UserModel userModel;

  SignUpSubmitted({required this.userModel});
}