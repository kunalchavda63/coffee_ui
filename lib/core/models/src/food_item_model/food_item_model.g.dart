// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FoodItemModel _$FoodItemModelFromJson(Map<String, dynamic> json) =>
    _FoodItemModel(
      id: (json['id'] as num).toInt(),
      title: (json['title'] as num).toInt(),
      foodList: (json['foodList'] as List<dynamic>)
          .map((e) => FoodModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      body: json['body'] as String,
    );

Map<String, dynamic> _$FoodItemModelToJson(_FoodItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'foodList': instance.foodList,
      'body': instance.body,
    };

_FoodModel _$FoodModelFromJson(Map<String, dynamic> json) => _FoodModel(
  id: (json['id'] as num).toInt(),
  foodTitle: json['foodTitle'] as String,
  price: (json['price'] as num).toInt(),
  hotelSubTitle: json['hotelSubTitle'] as String,
);

Map<String, dynamic> _$FoodModelToJson(_FoodModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'foodTitle': instance.foodTitle,
      'price': instance.price,
      'hotelSubTitle': instance.hotelSubTitle,
    };
