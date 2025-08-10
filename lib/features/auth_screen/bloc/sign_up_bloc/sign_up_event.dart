import 'package:coffe_ui/core/models/src/user_model/user_model.dart';
import 'package:coffe_ui/features/auth_screen/bloc/login_bloc/login_events.dart';

abstract class SignUpEvent {}

class SignUpSubmitted extends SignUpEvent{
  final UserModel userModel;

  SignUpSubmitted({required this.userModel});
}