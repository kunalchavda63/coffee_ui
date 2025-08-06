import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_post_model.freezed.dart';
part 'category_post_model.g.dart';

@freezed
abstract class CategoryPostModel with _$CategoryPostModel {
  const factory CategoryPostModel({
    required int id,
    required String imagePath,
    required String title,
    required String subTitle,
    required double rate,
    required int price,
    required int duration
  }) = _CategoryPostModel;

  factory CategoryPostModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryPostModelFromJson(json);
}
