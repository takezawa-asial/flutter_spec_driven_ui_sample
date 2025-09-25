// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Coupon _$CouponFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'none':
          return _CouponNone.fromJson(
            json
          );
                case 'percent_off':
          return _CouponPercentOff.fromJson(
            json
          );
                case 'fixed_off':
          return _CouponFixedOff.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'Coupon',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$Coupon {



  /// Serializes this Coupon to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Coupon);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Coupon()';
}


}

/// @nodoc
class $CouponCopyWith<$Res>  {
$CouponCopyWith(Coupon _, $Res Function(Coupon) __);
}


/// Adds pattern-matching-related methods to [Coupon].
extension CouponPatterns on Coupon {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CouponNone value)?  none,TResult Function( _CouponPercentOff value)?  percentOff,TResult Function( _CouponFixedOff value)?  fixedOff,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CouponNone() when none != null:
return none(_that);case _CouponPercentOff() when percentOff != null:
return percentOff(_that);case _CouponFixedOff() when fixedOff != null:
return fixedOff(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CouponNone value)  none,required TResult Function( _CouponPercentOff value)  percentOff,required TResult Function( _CouponFixedOff value)  fixedOff,}){
final _that = this;
switch (_that) {
case _CouponNone():
return none(_that);case _CouponPercentOff():
return percentOff(_that);case _CouponFixedOff():
return fixedOff(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CouponNone value)?  none,TResult? Function( _CouponPercentOff value)?  percentOff,TResult? Function( _CouponFixedOff value)?  fixedOff,}){
final _that = this;
switch (_that) {
case _CouponNone() when none != null:
return none(_that);case _CouponPercentOff() when percentOff != null:
return percentOff(_that);case _CouponFixedOff() when fixedOff != null:
return fixedOff(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  none,TResult Function( double percent)?  percentOff,TResult Function( double amount)?  fixedOff,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CouponNone() when none != null:
return none();case _CouponPercentOff() when percentOff != null:
return percentOff(_that.percent);case _CouponFixedOff() when fixedOff != null:
return fixedOff(_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  none,required TResult Function( double percent)  percentOff,required TResult Function( double amount)  fixedOff,}) {final _that = this;
switch (_that) {
case _CouponNone():
return none();case _CouponPercentOff():
return percentOff(_that.percent);case _CouponFixedOff():
return fixedOff(_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  none,TResult? Function( double percent)?  percentOff,TResult? Function( double amount)?  fixedOff,}) {final _that = this;
switch (_that) {
case _CouponNone() when none != null:
return none();case _CouponPercentOff() when percentOff != null:
return percentOff(_that.percent);case _CouponFixedOff() when fixedOff != null:
return fixedOff(_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CouponNone extends Coupon {
  const _CouponNone({final  String? $type}): $type = $type ?? 'none',super._();
  factory _CouponNone.fromJson(Map<String, dynamic> json) => _$CouponNoneFromJson(json);



@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$CouponNoneToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CouponNone);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Coupon.none()';
}


}




/// @nodoc
@JsonSerializable()

class _CouponPercentOff extends Coupon {
  const _CouponPercentOff({this.percent = 0.0, final  String? $type}): $type = $type ?? 'percent_off',super._();
  factory _CouponPercentOff.fromJson(Map<String, dynamic> json) => _$CouponPercentOffFromJson(json);

/// 例: 15% → 15.0
@JsonKey() final  double percent;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of Coupon
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CouponPercentOffCopyWith<_CouponPercentOff> get copyWith => __$CouponPercentOffCopyWithImpl<_CouponPercentOff>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CouponPercentOffToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CouponPercentOff&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,percent);

@override
String toString() {
  return 'Coupon.percentOff(percent: $percent)';
}


}

/// @nodoc
abstract mixin class _$CouponPercentOffCopyWith<$Res> implements $CouponCopyWith<$Res> {
  factory _$CouponPercentOffCopyWith(_CouponPercentOff value, $Res Function(_CouponPercentOff) _then) = __$CouponPercentOffCopyWithImpl;
@useResult
$Res call({
 double percent
});




}
/// @nodoc
class __$CouponPercentOffCopyWithImpl<$Res>
    implements _$CouponPercentOffCopyWith<$Res> {
  __$CouponPercentOffCopyWithImpl(this._self, this._then);

  final _CouponPercentOff _self;
  final $Res Function(_CouponPercentOff) _then;

/// Create a copy of Coupon
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? percent = null,}) {
  return _then(_CouponPercentOff(
percent: null == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _CouponFixedOff extends Coupon {
  const _CouponFixedOff({this.amount = 0.0, final  String? $type}): $type = $type ?? 'fixed_off',super._();
  factory _CouponFixedOff.fromJson(Map<String, dynamic> json) => _$CouponFixedOffFromJson(json);

/// 通貨単位は上位層で決める（ここでは数値のみ）
@JsonKey() final  double amount;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of Coupon
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CouponFixedOffCopyWith<_CouponFixedOff> get copyWith => __$CouponFixedOffCopyWithImpl<_CouponFixedOff>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CouponFixedOffToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CouponFixedOff&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'Coupon.fixedOff(amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$CouponFixedOffCopyWith<$Res> implements $CouponCopyWith<$Res> {
  factory _$CouponFixedOffCopyWith(_CouponFixedOff value, $Res Function(_CouponFixedOff) _then) = __$CouponFixedOffCopyWithImpl;
@useResult
$Res call({
 double amount
});




}
/// @nodoc
class __$CouponFixedOffCopyWithImpl<$Res>
    implements _$CouponFixedOffCopyWith<$Res> {
  __$CouponFixedOffCopyWithImpl(this._self, this._then);

  final _CouponFixedOff _self;
  final $Res Function(_CouponFixedOff) _then;

/// Create a copy of Coupon
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? amount = null,}) {
  return _then(_CouponFixedOff(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$Address {

 String get postalCode; String get line1; String? get line2; String? get prefecture; String? get city; String? get recipient; String? get phone;
/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressCopyWith<Address> get copyWith => _$AddressCopyWithImpl<Address>(this as Address, _$identity);

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Address&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.line1, line1) || other.line1 == line1)&&(identical(other.line2, line2) || other.line2 == line2)&&(identical(other.prefecture, prefecture) || other.prefecture == prefecture)&&(identical(other.city, city) || other.city == city)&&(identical(other.recipient, recipient) || other.recipient == recipient)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postalCode,line1,line2,prefecture,city,recipient,phone);

@override
String toString() {
  return 'Address(postalCode: $postalCode, line1: $line1, line2: $line2, prefecture: $prefecture, city: $city, recipient: $recipient, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $AddressCopyWith<$Res>  {
  factory $AddressCopyWith(Address value, $Res Function(Address) _then) = _$AddressCopyWithImpl;
@useResult
$Res call({
 String postalCode, String line1, String? line2, String? prefecture, String? city, String? recipient, String? phone
});




}
/// @nodoc
class _$AddressCopyWithImpl<$Res>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._self, this._then);

  final Address _self;
  final $Res Function(Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? postalCode = null,Object? line1 = null,Object? line2 = freezed,Object? prefecture = freezed,Object? city = freezed,Object? recipient = freezed,Object? phone = freezed,}) {
  return _then(_self.copyWith(
postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,line1: null == line1 ? _self.line1 : line1 // ignore: cast_nullable_to_non_nullable
as String,line2: freezed == line2 ? _self.line2 : line2 // ignore: cast_nullable_to_non_nullable
as String?,prefecture: freezed == prefecture ? _self.prefecture : prefecture // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,recipient: freezed == recipient ? _self.recipient : recipient // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Address].
extension AddressPatterns on Address {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Address value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Address value)  $default,){
final _that = this;
switch (_that) {
case _Address():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Address value)?  $default,){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String postalCode,  String line1,  String? line2,  String? prefecture,  String? city,  String? recipient,  String? phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.postalCode,_that.line1,_that.line2,_that.prefecture,_that.city,_that.recipient,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String postalCode,  String line1,  String? line2,  String? prefecture,  String? city,  String? recipient,  String? phone)  $default,) {final _that = this;
switch (_that) {
case _Address():
return $default(_that.postalCode,_that.line1,_that.line2,_that.prefecture,_that.city,_that.recipient,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String postalCode,  String line1,  String? line2,  String? prefecture,  String? city,  String? recipient,  String? phone)?  $default,) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.postalCode,_that.line1,_that.line2,_that.prefecture,_that.city,_that.recipient,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Address implements Address {
  const _Address({required this.postalCode, required this.line1, this.line2, this.prefecture, this.city, this.recipient, this.phone});
  factory _Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

@override final  String postalCode;
@override final  String line1;
@override final  String? line2;
@override final  String? prefecture;
@override final  String? city;
@override final  String? recipient;
@override final  String? phone;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressCopyWith<_Address> get copyWith => __$AddressCopyWithImpl<_Address>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Address&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.line1, line1) || other.line1 == line1)&&(identical(other.line2, line2) || other.line2 == line2)&&(identical(other.prefecture, prefecture) || other.prefecture == prefecture)&&(identical(other.city, city) || other.city == city)&&(identical(other.recipient, recipient) || other.recipient == recipient)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postalCode,line1,line2,prefecture,city,recipient,phone);

@override
String toString() {
  return 'Address(postalCode: $postalCode, line1: $line1, line2: $line2, prefecture: $prefecture, city: $city, recipient: $recipient, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) _then) = __$AddressCopyWithImpl;
@override @useResult
$Res call({
 String postalCode, String line1, String? line2, String? prefecture, String? city, String? recipient, String? phone
});




}
/// @nodoc
class __$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(this._self, this._then);

  final _Address _self;
  final $Res Function(_Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postalCode = null,Object? line1 = null,Object? line2 = freezed,Object? prefecture = freezed,Object? city = freezed,Object? recipient = freezed,Object? phone = freezed,}) {
  return _then(_Address(
postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,line1: null == line1 ? _self.line1 : line1 // ignore: cast_nullable_to_non_nullable
as String,line2: freezed == line2 ? _self.line2 : line2 // ignore: cast_nullable_to_non_nullable
as String?,prefecture: freezed == prefecture ? _self.prefecture : prefecture // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,recipient: freezed == recipient ? _self.recipient : recipient // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PickupStore {

 String get storeCode; String? get name;
/// Create a copy of PickupStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupStoreCopyWith<PickupStore> get copyWith => _$PickupStoreCopyWithImpl<PickupStore>(this as PickupStore, _$identity);

  /// Serializes this PickupStore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupStore&&(identical(other.storeCode, storeCode) || other.storeCode == storeCode)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeCode,name);

@override
String toString() {
  return 'PickupStore(storeCode: $storeCode, name: $name)';
}


}

/// @nodoc
abstract mixin class $PickupStoreCopyWith<$Res>  {
  factory $PickupStoreCopyWith(PickupStore value, $Res Function(PickupStore) _then) = _$PickupStoreCopyWithImpl;
@useResult
$Res call({
 String storeCode, String? name
});




}
/// @nodoc
class _$PickupStoreCopyWithImpl<$Res>
    implements $PickupStoreCopyWith<$Res> {
  _$PickupStoreCopyWithImpl(this._self, this._then);

  final PickupStore _self;
  final $Res Function(PickupStore) _then;

/// Create a copy of PickupStore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeCode = null,Object? name = freezed,}) {
  return _then(_self.copyWith(
storeCode: null == storeCode ? _self.storeCode : storeCode // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PickupStore].
extension PickupStorePatterns on PickupStore {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupStore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupStore() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupStore value)  $default,){
final _that = this;
switch (_that) {
case _PickupStore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupStore value)?  $default,){
final _that = this;
switch (_that) {
case _PickupStore() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String storeCode,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickupStore() when $default != null:
return $default(_that.storeCode,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String storeCode,  String? name)  $default,) {final _that = this;
switch (_that) {
case _PickupStore():
return $default(_that.storeCode,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String storeCode,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _PickupStore() when $default != null:
return $default(_that.storeCode,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PickupStore implements PickupStore {
  const _PickupStore({required this.storeCode, this.name});
  factory _PickupStore.fromJson(Map<String, dynamic> json) => _$PickupStoreFromJson(json);

@override final  String storeCode;
@override final  String? name;

/// Create a copy of PickupStore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupStoreCopyWith<_PickupStore> get copyWith => __$PickupStoreCopyWithImpl<_PickupStore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PickupStoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupStore&&(identical(other.storeCode, storeCode) || other.storeCode == storeCode)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeCode,name);

@override
String toString() {
  return 'PickupStore(storeCode: $storeCode, name: $name)';
}


}

/// @nodoc
abstract mixin class _$PickupStoreCopyWith<$Res> implements $PickupStoreCopyWith<$Res> {
  factory _$PickupStoreCopyWith(_PickupStore value, $Res Function(_PickupStore) _then) = __$PickupStoreCopyWithImpl;
@override @useResult
$Res call({
 String storeCode, String? name
});




}
/// @nodoc
class __$PickupStoreCopyWithImpl<$Res>
    implements _$PickupStoreCopyWith<$Res> {
  __$PickupStoreCopyWithImpl(this._self, this._then);

  final _PickupStore _self;
  final $Res Function(_PickupStore) _then;

/// Create a copy of PickupStore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeCode = null,Object? name = freezed,}) {
  return _then(_PickupStore(
storeCode: null == storeCode ? _self.storeCode : storeCode // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$OrderItem {

 String get sku; String get name;/// 単価（税抜/税込は上位で統一）
 int get unitPrice; int get quantity;/// 在庫状態（予約商品の場合は inStock 相当でも予約扱いにできる）
 Stock get stock;
/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemCopyWith<OrderItem> get copyWith => _$OrderItemCopyWithImpl<OrderItem>(this as OrderItem, _$identity);

  /// Serializes this OrderItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItem&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.name, name) || other.name == name)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.stock, stock) || other.stock == stock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sku,name,unitPrice,quantity,stock);

@override
String toString() {
  return 'OrderItem(sku: $sku, name: $name, unitPrice: $unitPrice, quantity: $quantity, stock: $stock)';
}


}

/// @nodoc
abstract mixin class $OrderItemCopyWith<$Res>  {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) _then) = _$OrderItemCopyWithImpl;
@useResult
$Res call({
 String sku, String name, int unitPrice, int quantity, Stock stock
});




}
/// @nodoc
class _$OrderItemCopyWithImpl<$Res>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._self, this._then);

  final OrderItem _self;
  final $Res Function(OrderItem) _then;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sku = null,Object? name = null,Object? unitPrice = null,Object? quantity = null,Object? stock = null,}) {
  return _then(_self.copyWith(
sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as Stock,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderItem].
extension OrderItemPatterns on OrderItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItem value)  $default,){
final _that = this;
switch (_that) {
case _OrderItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItem value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sku,  String name,  int unitPrice,  int quantity,  Stock stock)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that.sku,_that.name,_that.unitPrice,_that.quantity,_that.stock);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sku,  String name,  int unitPrice,  int quantity,  Stock stock)  $default,) {final _that = this;
switch (_that) {
case _OrderItem():
return $default(_that.sku,_that.name,_that.unitPrice,_that.quantity,_that.stock);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sku,  String name,  int unitPrice,  int quantity,  Stock stock)?  $default,) {final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that.sku,_that.name,_that.unitPrice,_that.quantity,_that.stock);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderItem extends OrderItem {
  const _OrderItem({required this.sku, required this.name, required this.unitPrice, this.quantity = 1, this.stock = Stock.inStock}): super._();
  factory _OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);

@override final  String sku;
@override final  String name;
/// 単価（税抜/税込は上位で統一）
@override final  int unitPrice;
@override@JsonKey() final  int quantity;
/// 在庫状態（予約商品の場合は inStock 相当でも予約扱いにできる）
@override@JsonKey() final  Stock stock;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemCopyWith<_OrderItem> get copyWith => __$OrderItemCopyWithImpl<_OrderItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItem&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.name, name) || other.name == name)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.stock, stock) || other.stock == stock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sku,name,unitPrice,quantity,stock);

@override
String toString() {
  return 'OrderItem(sku: $sku, name: $name, unitPrice: $unitPrice, quantity: $quantity, stock: $stock)';
}


}

/// @nodoc
abstract mixin class _$OrderItemCopyWith<$Res> implements $OrderItemCopyWith<$Res> {
  factory _$OrderItemCopyWith(_OrderItem value, $Res Function(_OrderItem) _then) = __$OrderItemCopyWithImpl;
@override @useResult
$Res call({
 String sku, String name, int unitPrice, int quantity, Stock stock
});




}
/// @nodoc
class __$OrderItemCopyWithImpl<$Res>
    implements _$OrderItemCopyWith<$Res> {
  __$OrderItemCopyWithImpl(this._self, this._then);

  final _OrderItem _self;
  final $Res Function(_OrderItem) _then;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sku = null,Object? name = null,Object? unitPrice = null,Object? quantity = null,Object? stock = null,}) {
  return _then(_OrderItem(
sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as Stock,
  ));
}


}


/// @nodoc
mixin _$Order {

 String get id; OrderType get orderType; List<OrderItem> get items;/// 配送方法
 Shipment get shipment;/// 支払い方法（選択中）
 PaymentMethod get paymentMethod;/// クーポン（なし含む）
 Coupon get coupon;/// 自宅配送なら必須、店舗受取ならnull
 Address? get shippingAddress;/// 店舗受取なら必須、自宅配送ならnull
 PickupStore? get pickupStore;/// 予約フラグ（商品ごとに扱うなら items 側の特性を集計してもOK）
 bool get isPreorder;
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCopyWith<Order> get copyWith => _$OrderCopyWithImpl<Order>(this as Order, _$identity);

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Order&&(identical(other.id, id) || other.id == id)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.shipment, shipment) || other.shipment == shipment)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.coupon, coupon) || other.coupon == coupon)&&(identical(other.shippingAddress, shippingAddress) || other.shippingAddress == shippingAddress)&&(identical(other.pickupStore, pickupStore) || other.pickupStore == pickupStore)&&(identical(other.isPreorder, isPreorder) || other.isPreorder == isPreorder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderType,const DeepCollectionEquality().hash(items),shipment,paymentMethod,coupon,shippingAddress,pickupStore,isPreorder);

@override
String toString() {
  return 'Order(id: $id, orderType: $orderType, items: $items, shipment: $shipment, paymentMethod: $paymentMethod, coupon: $coupon, shippingAddress: $shippingAddress, pickupStore: $pickupStore, isPreorder: $isPreorder)';
}


}

/// @nodoc
abstract mixin class $OrderCopyWith<$Res>  {
  factory $OrderCopyWith(Order value, $Res Function(Order) _then) = _$OrderCopyWithImpl;
@useResult
$Res call({
 String id, OrderType orderType, List<OrderItem> items, Shipment shipment, PaymentMethod paymentMethod, Coupon coupon, Address? shippingAddress, PickupStore? pickupStore, bool isPreorder
});


$CouponCopyWith<$Res> get coupon;$AddressCopyWith<$Res>? get shippingAddress;$PickupStoreCopyWith<$Res>? get pickupStore;

}
/// @nodoc
class _$OrderCopyWithImpl<$Res>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._self, this._then);

  final Order _self;
  final $Res Function(Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderType = null,Object? items = null,Object? shipment = null,Object? paymentMethod = null,Object? coupon = null,Object? shippingAddress = freezed,Object? pickupStore = freezed,Object? isPreorder = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as OrderType,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,shipment: null == shipment ? _self.shipment : shipment // ignore: cast_nullable_to_non_nullable
as Shipment,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod,coupon: null == coupon ? _self.coupon : coupon // ignore: cast_nullable_to_non_nullable
as Coupon,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as Address?,pickupStore: freezed == pickupStore ? _self.pickupStore : pickupStore // ignore: cast_nullable_to_non_nullable
as PickupStore?,isPreorder: null == isPreorder ? _self.isPreorder : isPreorder // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CouponCopyWith<$Res> get coupon {
  
  return $CouponCopyWith<$Res>(_self.coupon, (value) {
    return _then(_self.copyWith(coupon: value));
  });
}/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get shippingAddress {
    if (_self.shippingAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.shippingAddress!, (value) {
    return _then(_self.copyWith(shippingAddress: value));
  });
}/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PickupStoreCopyWith<$Res>? get pickupStore {
    if (_self.pickupStore == null) {
    return null;
  }

  return $PickupStoreCopyWith<$Res>(_self.pickupStore!, (value) {
    return _then(_self.copyWith(pickupStore: value));
  });
}
}


/// Adds pattern-matching-related methods to [Order].
extension OrderPatterns on Order {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Order value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Order value)  $default,){
final _that = this;
switch (_that) {
case _Order():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Order value)?  $default,){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  OrderType orderType,  List<OrderItem> items,  Shipment shipment,  PaymentMethod paymentMethod,  Coupon coupon,  Address? shippingAddress,  PickupStore? pickupStore,  bool isPreorder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.orderType,_that.items,_that.shipment,_that.paymentMethod,_that.coupon,_that.shippingAddress,_that.pickupStore,_that.isPreorder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  OrderType orderType,  List<OrderItem> items,  Shipment shipment,  PaymentMethod paymentMethod,  Coupon coupon,  Address? shippingAddress,  PickupStore? pickupStore,  bool isPreorder)  $default,) {final _that = this;
switch (_that) {
case _Order():
return $default(_that.id,_that.orderType,_that.items,_that.shipment,_that.paymentMethod,_that.coupon,_that.shippingAddress,_that.pickupStore,_that.isPreorder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  OrderType orderType,  List<OrderItem> items,  Shipment shipment,  PaymentMethod paymentMethod,  Coupon coupon,  Address? shippingAddress,  PickupStore? pickupStore,  bool isPreorder)?  $default,) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.orderType,_that.items,_that.shipment,_that.paymentMethod,_that.coupon,_that.shippingAddress,_that.pickupStore,_that.isPreorder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Order extends Order {
  const _Order({required this.id, this.orderType = OrderType.normal, required final  List<OrderItem> items, this.shipment = Shipment.home, this.paymentMethod = PaymentMethod.card, this.coupon = const Coupon.none(), this.shippingAddress, this.pickupStore, this.isPreorder = false}): _items = items,super._();
  factory _Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

@override final  String id;
@override@JsonKey() final  OrderType orderType;
 final  List<OrderItem> _items;
@override List<OrderItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

/// 配送方法
@override@JsonKey() final  Shipment shipment;
/// 支払い方法（選択中）
@override@JsonKey() final  PaymentMethod paymentMethod;
/// クーポン（なし含む）
@override@JsonKey() final  Coupon coupon;
/// 自宅配送なら必須、店舗受取ならnull
@override final  Address? shippingAddress;
/// 店舗受取なら必須、自宅配送ならnull
@override final  PickupStore? pickupStore;
/// 予約フラグ（商品ごとに扱うなら items 側の特性を集計してもOK）
@override@JsonKey() final  bool isPreorder;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCopyWith<_Order> get copyWith => __$OrderCopyWithImpl<_Order>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Order&&(identical(other.id, id) || other.id == id)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.shipment, shipment) || other.shipment == shipment)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.coupon, coupon) || other.coupon == coupon)&&(identical(other.shippingAddress, shippingAddress) || other.shippingAddress == shippingAddress)&&(identical(other.pickupStore, pickupStore) || other.pickupStore == pickupStore)&&(identical(other.isPreorder, isPreorder) || other.isPreorder == isPreorder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderType,const DeepCollectionEquality().hash(_items),shipment,paymentMethod,coupon,shippingAddress,pickupStore,isPreorder);

@override
String toString() {
  return 'Order(id: $id, orderType: $orderType, items: $items, shipment: $shipment, paymentMethod: $paymentMethod, coupon: $coupon, shippingAddress: $shippingAddress, pickupStore: $pickupStore, isPreorder: $isPreorder)';
}


}

/// @nodoc
abstract mixin class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) _then) = __$OrderCopyWithImpl;
@override @useResult
$Res call({
 String id, OrderType orderType, List<OrderItem> items, Shipment shipment, PaymentMethod paymentMethod, Coupon coupon, Address? shippingAddress, PickupStore? pickupStore, bool isPreorder
});


@override $CouponCopyWith<$Res> get coupon;@override $AddressCopyWith<$Res>? get shippingAddress;@override $PickupStoreCopyWith<$Res>? get pickupStore;

}
/// @nodoc
class __$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(this._self, this._then);

  final _Order _self;
  final $Res Function(_Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderType = null,Object? items = null,Object? shipment = null,Object? paymentMethod = null,Object? coupon = null,Object? shippingAddress = freezed,Object? pickupStore = freezed,Object? isPreorder = null,}) {
  return _then(_Order(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as OrderType,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,shipment: null == shipment ? _self.shipment : shipment // ignore: cast_nullable_to_non_nullable
as Shipment,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod,coupon: null == coupon ? _self.coupon : coupon // ignore: cast_nullable_to_non_nullable
as Coupon,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as Address?,pickupStore: freezed == pickupStore ? _self.pickupStore : pickupStore // ignore: cast_nullable_to_non_nullable
as PickupStore?,isPreorder: null == isPreorder ? _self.isPreorder : isPreorder // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CouponCopyWith<$Res> get coupon {
  
  return $CouponCopyWith<$Res>(_self.coupon, (value) {
    return _then(_self.copyWith(coupon: value));
  });
}/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get shippingAddress {
    if (_self.shippingAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.shippingAddress!, (value) {
    return _then(_self.copyWith(shippingAddress: value));
  });
}/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PickupStoreCopyWith<$Res>? get pickupStore {
    if (_self.pickupStore == null) {
    return null;
  }

  return $PickupStoreCopyWith<$Res>(_self.pickupStore!, (value) {
    return _then(_self.copyWith(pickupStore: value));
  });
}
}

// dart format on
