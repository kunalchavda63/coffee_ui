import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_item_model.freezed.dart';
part 'food_item_model.g.dart';

@freezed
abstract class FoodItemModel with _$FoodItemModel {
  const factory FoodItemModel({
    required int id,
    required int title,
    required List<FoodModel> foodList,
    // required List<RestaturantModel> restaurantModel,
    required String body,
  }) = _FoodItemModel;

  factory FoodItemModel.fromJson(Map<String, dynamic> json) =>
      _$FoodItemModelFromJson(json);
}

@freezed
abstract class FoodModel with _$FoodModel{
  const factory FoodModel({
    required int id,
    required String foodTitle,
    required int price,
    required String hotelSubTitle,
}) = _FoodModel;
  factory FoodModel.fromJson(Map<String,dynamic> json) =>
      _$FoodModelFromJson(json);
}


