import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String email,
    required String password,
    @Default(Role.user) Role role,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
