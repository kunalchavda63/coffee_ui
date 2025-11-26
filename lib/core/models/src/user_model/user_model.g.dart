// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: (json['id'] as num?)?.toInt(),
  username: json['username'] as String?,
  email: json['email'] as String?,
  password: json['password'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
  profile: json['profile'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'created_at': instance.createdAt?.toIso8601String(),
      'role': _$RoleEnumMap[instance.role],
      'profile': instance.profile,
    };

const _$RoleEnumMap = {Role.user: 'user', Role.admin: 'admin'};
