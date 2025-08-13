import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    int? id,
    String? name,
    String? email,
    String? password,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    Role? role,
    Map<String,dynamic>? profile
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
