// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodItemModel {

 int get id; int get title; List<FoodModel> get foodList;// required List<RestaturantModel> restaurantModel,
 String get body;
/// Create a copy of FoodItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodItemModelCopyWith<FoodItemModel> get copyWith => _$FoodItemModelCopyWithImpl<FoodItemModel>(this as FoodItemModel, _$identity);

  /// Serializes this FoodItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.foodList, foodList)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(foodList),body);

@override
String toString() {
  return 'FoodItemModel(id: $id, title: $title, foodList: $foodList, body: $body)';
}


}

/// @nodoc
abstract mixin class $FoodItemModelCopyWith<$Res>  {
  factory $FoodItemModelCopyWith(FoodItemModel value, $Res Function(FoodItemModel) _then) = _$FoodItemModelCopyWithImpl;
@useResult
$Res call({
 int id, int title, List<FoodModel> foodList, String body
});




}
/// @nodoc
class _$FoodItemModelCopyWithImpl<$Res>
    implements $FoodItemModelCopyWith<$Res> {
  _$FoodItemModelCopyWithImpl(this._self, this._then);

  final FoodItemModel _self;
  final $Res Function(FoodItemModel) _then;

/// Create a copy of FoodItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? foodList = null,Object? body = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as int,foodList: null == foodList ? _self.foodList : foodList // ignore: cast_nullable_to_non_nullable
as List<FoodModel>,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodItemModel].
extension FoodItemModelPatterns on FoodItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodItemModel value)  $default,){
final _that = this;
switch (_that) {
case _FoodItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _FoodItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int title,  List<FoodModel> foodList,  String body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodItemModel() when $default != null:
return $default(_that.id,_that.title,_that.foodList,_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int title,  List<FoodModel> foodList,  String body)  $default,) {final _that = this;
switch (_that) {
case _FoodItemModel():
return $default(_that.id,_that.title,_that.foodList,_that.body);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int title,  List<FoodModel> foodList,  String body)?  $default,) {final _that = this;
switch (_that) {
case _FoodItemModel() when $default != null:
return $default(_that.id,_that.title,_that.foodList,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodItemModel implements FoodItemModel {
  const _FoodItemModel({required this.id, required this.title, required final  List<FoodModel> foodList, required this.body}): _foodList = foodList;
  factory _FoodItemModel.fromJson(Map<String, dynamic> json) => _$FoodItemModelFromJson(json);

@override final  int id;
@override final  int title;
 final  List<FoodModel> _foodList;
@override List<FoodModel> get foodList {
  if (_foodList is EqualUnmodifiableListView) return _foodList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_foodList);
}

// required List<RestaturantModel> restaurantModel,
@override final  String body;

/// Create a copy of FoodItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodItemModelCopyWith<_FoodItemModel> get copyWith => __$FoodItemModelCopyWithImpl<_FoodItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._foodList, _foodList)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_foodList),body);

@override
String toString() {
  return 'FoodItemModel(id: $id, title: $title, foodList: $foodList, body: $body)';
}


}

/// @nodoc
abstract mixin class _$FoodItemModelCopyWith<$Res> implements $FoodItemModelCopyWith<$Res> {
  factory _$FoodItemModelCopyWith(_FoodItemModel value, $Res Function(_FoodItemModel) _then) = __$FoodItemModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int title, List<FoodModel> foodList, String body
});




}
/// @nodoc
class __$FoodItemModelCopyWithImpl<$Res>
    implements _$FoodItemModelCopyWith<$Res> {
  __$FoodItemModelCopyWithImpl(this._self, this._then);

  final _FoodItemModel _self;
  final $Res Function(_FoodItemModel) _then;

/// Create a copy of FoodItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? foodList = null,Object? body = null,}) {
  return _then(_FoodItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as int,foodList: null == foodList ? _self._foodList : foodList // ignore: cast_nullable_to_non_nullable
as List<FoodModel>,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FoodModel {

 int get id; String get foodTitle; int get price; String get hotelSubTitle;
/// Create a copy of FoodModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodModelCopyWith<FoodModel> get copyWith => _$FoodModelCopyWithImpl<FoodModel>(this as FoodModel, _$identity);

  /// Serializes this FoodModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodModel&&(identical(other.id, id) || other.id == id)&&(identical(other.foodTitle, foodTitle) || other.foodTitle == foodTitle)&&(identical(other.price, price) || other.price == price)&&(identical(other.hotelSubTitle, hotelSubTitle) || other.hotelSubTitle == hotelSubTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,foodTitle,price,hotelSubTitle);

@override
String toString() {
  return 'FoodModel(id: $id, foodTitle: $foodTitle, price: $price, hotelSubTitle: $hotelSubTitle)';
}


}

/// @nodoc
abstract mixin class $FoodModelCopyWith<$Res>  {
  factory $FoodModelCopyWith(FoodModel value, $Res Function(FoodModel) _then) = _$FoodModelCopyWithImpl;
@useResult
$Res call({
 int id, String foodTitle, int price, String hotelSubTitle
});




}
/// @nodoc
class _$FoodModelCopyWithImpl<$Res>
    implements $FoodModelCopyWith<$Res> {
  _$FoodModelCopyWithImpl(this._self, this._then);

  final FoodModel _self;
  final $Res Function(FoodModel) _then;

/// Create a copy of FoodModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? foodTitle = null,Object? price = null,Object? hotelSubTitle = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,foodTitle: null == foodTitle ? _self.foodTitle : foodTitle // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,hotelSubTitle: null == hotelSubTitle ? _self.hotelSubTitle : hotelSubTitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodModel].
extension FoodModelPatterns on FoodModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodModel value)  $default,){
final _that = this;
switch (_that) {
case _FoodModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodModel value)?  $default,){
final _that = this;
switch (_that) {
case _FoodModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String foodTitle,  int price,  String hotelSubTitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodModel() when $default != null:
return $default(_that.id,_that.foodTitle,_that.price,_that.hotelSubTitle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String foodTitle,  int price,  String hotelSubTitle)  $default,) {final _that = this;
switch (_that) {
case _FoodModel():
return $default(_that.id,_that.foodTitle,_that.price,_that.hotelSubTitle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String foodTitle,  int price,  String hotelSubTitle)?  $default,) {final _that = this;
switch (_that) {
case _FoodModel() when $default != null:
return $default(_that.id,_that.foodTitle,_that.price,_that.hotelSubTitle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodModel implements FoodModel {
  const _FoodModel({required this.id, required this.foodTitle, required this.price, required this.hotelSubTitle});
  factory _FoodModel.fromJson(Map<String, dynamic> json) => _$FoodModelFromJson(json);

@override final  int id;
@override final  String foodTitle;
@override final  int price;
@override final  String hotelSubTitle;

/// Create a copy of FoodModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodModelCopyWith<_FoodModel> get copyWith => __$FoodModelCopyWithImpl<_FoodModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodModel&&(identical(other.id, id) || other.id == id)&&(identical(other.foodTitle, foodTitle) || other.foodTitle == foodTitle)&&(identical(other.price, price) || other.price == price)&&(identical(other.hotelSubTitle, hotelSubTitle) || other.hotelSubTitle == hotelSubTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,foodTitle,price,hotelSubTitle);

@override
String toString() {
  return 'FoodModel(id: $id, foodTitle: $foodTitle, price: $price, hotelSubTitle: $hotelSubTitle)';
}


}

/// @nodoc
abstract mixin class _$FoodModelCopyWith<$Res> implements $FoodModelCopyWith<$Res> {
  factory _$FoodModelCopyWith(_FoodModel value, $Res Function(_FoodModel) _then) = __$FoodModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String foodTitle, int price, String hotelSubTitle
});




}
/// @nodoc
class __$FoodModelCopyWithImpl<$Res>
    implements _$FoodModelCopyWith<$Res> {
  __$FoodModelCopyWithImpl(this._self, this._then);

  final _FoodModel _self;
  final $Res Function(_FoodModel) _then;

/// Create a copy of FoodModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? foodTitle = null,Object? price = null,Object? hotelSubTitle = null,}) {
  return _then(_FoodModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,foodTitle: null == foodTitle ? _self.foodTitle : foodTitle // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,hotelSubTitle: null == hotelSubTitle ? _self.hotelSubTitle : hotelSubTitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
