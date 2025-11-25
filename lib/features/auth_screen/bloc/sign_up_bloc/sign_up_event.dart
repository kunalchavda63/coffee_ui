import 'package:coffe_ui/core/models/src/user_model/user_model.dart';

abstract class SignUpEvent {}

class SignUpSubmitted extends SignUpEvent{

  SignUpSubmitted({required this.userModel});
  final UserModel userModel;
}