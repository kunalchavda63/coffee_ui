// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryPostModel _$CategoryPostModelFromJson(Map<String, dynamic> json) =>
    _CategoryPostModel(
      id: (json['id'] as num).toInt(),
      imagePath: json['imagePath'] as String,
      title: json['title'] as String,
      subTitle: json['subTitle'] as String,
      rate: (json['rate'] as num).toDouble(),
      price: (json['price'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
    );

Map<String, dynamic> _$CategoryPostModelToJson(_CategoryPostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'rate': instance.rate,
      'price': instance.price,
      'duration': instance.duration,
    };
