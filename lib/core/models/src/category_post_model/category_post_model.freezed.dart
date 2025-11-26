// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryPostModel {

 int get id; String get imagePath; String get title; String get subTitle; double get rate; int get price; int get duration;
/// Create a copy of CategoryPostModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryPostModelCopyWith<CategoryPostModel> get copyWith => _$CategoryPostModelCopyWithImpl<CategoryPostModel>(this as CategoryPostModel, _$identity);

  /// Serializes this CategoryPostModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryPostModel&&(identical(other.id, id) || other.id == id)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.title, title) || other.title == title)&&(identical(other.subTitle, subTitle) || other.subTitle == subTitle)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.price, price) || other.price == price)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imagePath,title,subTitle,rate,price,duration);

@override
String toString() {
  return 'CategoryPostModel(id: $id, imagePath: $imagePath, title: $title, subTitle: $subTitle, rate: $rate, price: $price, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $CategoryPostModelCopyWith<$Res>  {
  factory $CategoryPostModelCopyWith(CategoryPostModel value, $Res Function(CategoryPostModel) _then) = _$CategoryPostModelCopyWithImpl;
@useResult
$Res call({
 int id, String imagePath, String title, String subTitle, double rate, int price, int duration
});




}
/// @nodoc
class _$CategoryPostModelCopyWithImpl<$Res>
    implements $CategoryPostModelCopyWith<$Res> {
  _$CategoryPostModelCopyWithImpl(this._self, this._then);

  final CategoryPostModel _self;
  final $Res Function(CategoryPostModel) _then;

/// Create a copy of CategoryPostModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imagePath = null,Object? title = null,Object? subTitle = null,Object? rate = null,Object? price = null,Object? duration = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subTitle: null == subTitle ? _self.subTitle : subTitle // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryPostModel].
extension CategoryPostModelPatterns on CategoryPostModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryPostModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryPostModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryPostModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryPostModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryPostModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryPostModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String imagePath,  String title,  String subTitle,  double rate,  int price,  int duration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryPostModel() when $default != null:
return $default(_that.id,_that.imagePath,_that.title,_that.subTitle,_that.rate,_that.price,_that.duration);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String imagePath,  String title,  String subTitle,  double rate,  int price,  int duration)  $default,) {final _that = this;
switch (_that) {
case _CategoryPostModel():
return $default(_that.id,_that.imagePath,_that.title,_that.subTitle,_that.rate,_that.price,_that.duration);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String imagePath,  String title,  String subTitle,  double rate,  int price,  int duration)?  $default,) {final _that = this;
switch (_that) {
case _CategoryPostModel() when $default != null:
return $default(_that.id,_that.imagePath,_that.title,_that.subTitle,_that.rate,_that.price,_that.duration);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryPostModel implements CategoryPostModel {
  const _CategoryPostModel({required this.id, required this.imagePath, required this.title, required this.subTitle, required this.rate, required this.price, required this.duration});
  factory _CategoryPostModel.fromJson(Map<String, dynamic> json) => _$CategoryPostModelFromJson(json);

@override final  int id;
@override final  String imagePath;
@override final  String title;
@override final  String subTitle;
@override final  double rate;
@override final  int price;
@override final  int duration;

/// Create a copy of CategoryPostModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryPostModelCopyWith<_CategoryPostModel> get copyWith => __$CategoryPostModelCopyWithImpl<_CategoryPostModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryPostModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryPostModel&&(identical(other.id, id) || other.id == id)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.title, title) || other.title == title)&&(identical(other.subTitle, subTitle) || other.subTitle == subTitle)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.price, price) || other.price == price)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imagePath,title,subTitle,rate,price,duration);

@override
String toString() {
  return 'CategoryPostModel(id: $id, imagePath: $imagePath, title: $title, subTitle: $subTitle, rate: $rate, price: $price, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$CategoryPostModelCopyWith<$Res> implements $CategoryPostModelCopyWith<$Res> {
  factory _$CategoryPostModelCopyWith(_CategoryPostModel value, $Res Function(_CategoryPostModel) _then) = __$CategoryPostModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String imagePath, String title, String subTitle, double rate, int price, int duration
});




}
/// @nodoc
class __$CategoryPostModelCopyWithImpl<$Res>
    implements _$CategoryPostModelCopyWith<$Res> {
  __$CategoryPostModelCopyWithImpl(this._self, this._then);

  final _CategoryPostModel _self;
  final $Res Function(_CategoryPostModel) _then;

/// Create a copy of CategoryPostModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imagePath = null,Object? title = null,Object? subTitle = null,Object? rate = null,Object? price = null,Object? duration = null,}) {
  return _then(_CategoryPostModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subTitle: null == subTitle ? _self.subTitle : subTitle // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
