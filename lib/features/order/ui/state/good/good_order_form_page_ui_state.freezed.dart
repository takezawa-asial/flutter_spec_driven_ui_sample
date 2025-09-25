// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'good_order_form_page_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GoodOrderFormPageUiState {

 BannerState get banner; PaymentUiState get payment; AddressSectionState get address; BuyButtonState get buy; int get subtotal; int get discount; int get total;
/// Create a copy of GoodOrderFormPageUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoodOrderFormPageUiStateCopyWith<GoodOrderFormPageUiState> get copyWith => _$GoodOrderFormPageUiStateCopyWithImpl<GoodOrderFormPageUiState>(this as GoodOrderFormPageUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoodOrderFormPageUiState&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.address, address) || other.address == address)&&(identical(other.buy, buy) || other.buy == buy)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,banner,payment,address,buy,subtotal,discount,total);

@override
String toString() {
  return 'GoodOrderFormPageUiState(banner: $banner, payment: $payment, address: $address, buy: $buy, subtotal: $subtotal, discount: $discount, total: $total)';
}


}

/// @nodoc
abstract mixin class $GoodOrderFormPageUiStateCopyWith<$Res>  {
  factory $GoodOrderFormPageUiStateCopyWith(GoodOrderFormPageUiState value, $Res Function(GoodOrderFormPageUiState) _then) = _$GoodOrderFormPageUiStateCopyWithImpl;
@useResult
$Res call({
 BannerState banner, PaymentUiState payment, AddressSectionState address, BuyButtonState buy, int subtotal, int discount, int total
});


$BannerStateCopyWith<$Res> get banner;$PaymentUiStateCopyWith<$Res> get payment;$AddressSectionStateCopyWith<$Res> get address;$BuyButtonStateCopyWith<$Res> get buy;

}
/// @nodoc
class _$GoodOrderFormPageUiStateCopyWithImpl<$Res>
    implements $GoodOrderFormPageUiStateCopyWith<$Res> {
  _$GoodOrderFormPageUiStateCopyWithImpl(this._self, this._then);

  final GoodOrderFormPageUiState _self;
  final $Res Function(GoodOrderFormPageUiState) _then;

/// Create a copy of GoodOrderFormPageUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? banner = null,Object? payment = null,Object? address = null,Object? buy = null,Object? subtotal = null,Object? discount = null,Object? total = null,}) {
  return _then(_self.copyWith(
banner: null == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as BannerState,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentUiState,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressSectionState,buy: null == buy ? _self.buy : buy // ignore: cast_nullable_to_non_nullable
as BuyButtonState,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of GoodOrderFormPageUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BannerStateCopyWith<$Res> get banner {
  
  return $BannerStateCopyWith<$Res>(_self.banner, (value) {
    return _then(_self.copyWith(banner: value));
  });
}/// Create a copy of GoodOrderFormPageUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentUiStateCopyWith<$Res> get payment {
  
  return $PaymentUiStateCopyWith<$Res>(_self.payment, (value) {
    return _then(_self.copyWith(payment: value));
  });
}/// Create a copy of GoodOrderFormPageUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressSectionStateCopyWith<$Res> get address {
  
  return $AddressSectionStateCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of GoodOrderFormPageUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BuyButtonStateCopyWith<$Res> get buy {
  
  return $BuyButtonStateCopyWith<$Res>(_self.buy, (value) {
    return _then(_self.copyWith(buy: value));
  });
}
}


/// Adds pattern-matching-related methods to [GoodOrderFormPageUiState].
extension GoodOrderFormPageUiStatePatterns on GoodOrderFormPageUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoodOrderFormPageUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoodOrderFormPageUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoodOrderFormPageUiState value)  $default,){
final _that = this;
switch (_that) {
case _GoodOrderFormPageUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoodOrderFormPageUiState value)?  $default,){
final _that = this;
switch (_that) {
case _GoodOrderFormPageUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BannerState banner,  PaymentUiState payment,  AddressSectionState address,  BuyButtonState buy,  int subtotal,  int discount,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoodOrderFormPageUiState() when $default != null:
return $default(_that.banner,_that.payment,_that.address,_that.buy,_that.subtotal,_that.discount,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BannerState banner,  PaymentUiState payment,  AddressSectionState address,  BuyButtonState buy,  int subtotal,  int discount,  int total)  $default,) {final _that = this;
switch (_that) {
case _GoodOrderFormPageUiState():
return $default(_that.banner,_that.payment,_that.address,_that.buy,_that.subtotal,_that.discount,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BannerState banner,  PaymentUiState payment,  AddressSectionState address,  BuyButtonState buy,  int subtotal,  int discount,  int total)?  $default,) {final _that = this;
switch (_that) {
case _GoodOrderFormPageUiState() when $default != null:
return $default(_that.banner,_that.payment,_that.address,_that.buy,_that.subtotal,_that.discount,_that.total);case _:
  return null;

}
}

}

/// @nodoc


class _GoodOrderFormPageUiState implements GoodOrderFormPageUiState {
  const _GoodOrderFormPageUiState({required this.banner, required this.payment, required this.address, required this.buy, required this.subtotal, required this.discount, required this.total});
  

@override final  BannerState banner;
@override final  PaymentUiState payment;
@override final  AddressSectionState address;
@override final  BuyButtonState buy;
@override final  int subtotal;
@override final  int discount;
@override final  int total;

/// Create a copy of GoodOrderFormPageUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoodOrderFormPageUiStateCopyWith<_GoodOrderFormPageUiState> get copyWith => __$GoodOrderFormPageUiStateCopyWithImpl<_GoodOrderFormPageUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoodOrderFormPageUiState&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.address, address) || other.address == address)&&(identical(other.buy, buy) || other.buy == buy)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,banner,payment,address,buy,subtotal,discount,total);

@override
String toString() {
  return 'GoodOrderFormPageUiState(banner: $banner, payment: $payment, address: $address, buy: $buy, subtotal: $subtotal, discount: $discount, total: $total)';
}


}

/// @nodoc
abstract mixin class _$GoodOrderFormPageUiStateCopyWith<$Res> implements $GoodOrderFormPageUiStateCopyWith<$Res> {
  factory _$GoodOrderFormPageUiStateCopyWith(_GoodOrderFormPageUiState value, $Res Function(_GoodOrderFormPageUiState) _then) = __$GoodOrderFormPageUiStateCopyWithImpl;
@override @useResult
$Res call({
 BannerState banner, PaymentUiState payment, AddressSectionState address, BuyButtonState buy, int subtotal, int discount, int total
});


@override $BannerStateCopyWith<$Res> get banner;@override $PaymentUiStateCopyWith<$Res> get payment;@override $AddressSectionStateCopyWith<$Res> get address;@override $BuyButtonStateCopyWith<$Res> get buy;

}
/// @nodoc
class __$GoodOrderFormPageUiStateCopyWithImpl<$Res>
    implements _$GoodOrderFormPageUiStateCopyWith<$Res> {
  __$GoodOrderFormPageUiStateCopyWithImpl(this._self, this._then);

  final _GoodOrderFormPageUiState _self;
  final $Res Function(_GoodOrderFormPageUiState) _then;

/// Create a copy of GoodOrderFormPageUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? banner = null,Object? payment = null,Object? address = null,Object? buy = null,Object? subtotal = null,Object? discount = null,Object? total = null,}) {
  return _then(_GoodOrderFormPageUiState(
banner: null == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as BannerState,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentUiState,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressSectionState,buy: null == buy ? _self.buy : buy // ignore: cast_nullable_to_non_nullable
as BuyButtonState,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of GoodOrderFormPageUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BannerStateCopyWith<$Res> get banner {
  
  return $BannerStateCopyWith<$Res>(_self.banner, (value) {
    return _then(_self.copyWith(banner: value));
  });
}/// Create a copy of GoodOrderFormPageUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentUiStateCopyWith<$Res> get payment {
  
  return $PaymentUiStateCopyWith<$Res>(_self.payment, (value) {
    return _then(_self.copyWith(payment: value));
  });
}/// Create a copy of GoodOrderFormPageUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressSectionStateCopyWith<$Res> get address {
  
  return $AddressSectionStateCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of GoodOrderFormPageUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BuyButtonStateCopyWith<$Res> get buy {
  
  return $BuyButtonStateCopyWith<$Res>(_self.buy, (value) {
    return _then(_self.copyWith(buy: value));
  });
}
}

/// @nodoc
mixin _$BannerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BannerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BannerState()';
}


}

/// @nodoc
class $BannerStateCopyWith<$Res>  {
$BannerStateCopyWith(BannerState _, $Res Function(BannerState) __);
}


/// Adds pattern-matching-related methods to [BannerState].
extension BannerStatePatterns on BannerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NoBanner value)?  none,TResult Function( InfoBanner value)?  info,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NoBanner() when none != null:
return none(_that);case InfoBanner() when info != null:
return info(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NoBanner value)  none,required TResult Function( InfoBanner value)  info,}){
final _that = this;
switch (_that) {
case NoBanner():
return none(_that);case InfoBanner():
return info(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NoBanner value)?  none,TResult? Function( InfoBanner value)?  info,}){
final _that = this;
switch (_that) {
case NoBanner() when none != null:
return none(_that);case InfoBanner() when info != null:
return info(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  none,TResult Function( String text)?  info,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NoBanner() when none != null:
return none();case InfoBanner() when info != null:
return info(_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  none,required TResult Function( String text)  info,}) {final _that = this;
switch (_that) {
case NoBanner():
return none();case InfoBanner():
return info(_that.text);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  none,TResult? Function( String text)?  info,}) {final _that = this;
switch (_that) {
case NoBanner() when none != null:
return none();case InfoBanner() when info != null:
return info(_that.text);case _:
  return null;

}
}

}

/// @nodoc


class NoBanner implements BannerState {
  const NoBanner();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoBanner);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BannerState.none()';
}


}




/// @nodoc


class InfoBanner implements BannerState {
  const InfoBanner(this.text);
  

 final  String text;

/// Create a copy of BannerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfoBannerCopyWith<InfoBanner> get copyWith => _$InfoBannerCopyWithImpl<InfoBanner>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfoBanner&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'BannerState.info(text: $text)';
}


}

/// @nodoc
abstract mixin class $InfoBannerCopyWith<$Res> implements $BannerStateCopyWith<$Res> {
  factory $InfoBannerCopyWith(InfoBanner value, $Res Function(InfoBanner) _then) = _$InfoBannerCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$InfoBannerCopyWithImpl<$Res>
    implements $InfoBannerCopyWith<$Res> {
  _$InfoBannerCopyWithImpl(this._self, this._then);

  final InfoBanner _self;
  final $Res Function(InfoBanner) _then;

/// Create a copy of BannerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(InfoBanner(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PaymentUiState {

 bool get card; bool get cod; bool get bank; PaymentMethod get selected;
/// Create a copy of PaymentUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentUiStateCopyWith<PaymentUiState> get copyWith => _$PaymentUiStateCopyWithImpl<PaymentUiState>(this as PaymentUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentUiState&&(identical(other.card, card) || other.card == card)&&(identical(other.cod, cod) || other.cod == cod)&&(identical(other.bank, bank) || other.bank == bank)&&(identical(other.selected, selected) || other.selected == selected));
}


@override
int get hashCode => Object.hash(runtimeType,card,cod,bank,selected);

@override
String toString() {
  return 'PaymentUiState(card: $card, cod: $cod, bank: $bank, selected: $selected)';
}


}

/// @nodoc
abstract mixin class $PaymentUiStateCopyWith<$Res>  {
  factory $PaymentUiStateCopyWith(PaymentUiState value, $Res Function(PaymentUiState) _then) = _$PaymentUiStateCopyWithImpl;
@useResult
$Res call({
 bool card, bool cod, bool bank, PaymentMethod selected
});




}
/// @nodoc
class _$PaymentUiStateCopyWithImpl<$Res>
    implements $PaymentUiStateCopyWith<$Res> {
  _$PaymentUiStateCopyWithImpl(this._self, this._then);

  final PaymentUiState _self;
  final $Res Function(PaymentUiState) _then;

/// Create a copy of PaymentUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? card = null,Object? cod = null,Object? bank = null,Object? selected = null,}) {
  return _then(_self.copyWith(
card: null == card ? _self.card : card // ignore: cast_nullable_to_non_nullable
as bool,cod: null == cod ? _self.cod : cod // ignore: cast_nullable_to_non_nullable
as bool,bank: null == bank ? _self.bank : bank // ignore: cast_nullable_to_non_nullable
as bool,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as PaymentMethod,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentUiState].
extension PaymentUiStatePatterns on PaymentUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PaymentOptions value)?  options,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaymentOptions() when options != null:
return options(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PaymentOptions value)  options,}){
final _that = this;
switch (_that) {
case PaymentOptions():
return options(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PaymentOptions value)?  options,}){
final _that = this;
switch (_that) {
case PaymentOptions() when options != null:
return options(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool card,  bool cod,  bool bank,  PaymentMethod selected)?  options,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaymentOptions() when options != null:
return options(_that.card,_that.cod,_that.bank,_that.selected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool card,  bool cod,  bool bank,  PaymentMethod selected)  options,}) {final _that = this;
switch (_that) {
case PaymentOptions():
return options(_that.card,_that.cod,_that.bank,_that.selected);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool card,  bool cod,  bool bank,  PaymentMethod selected)?  options,}) {final _that = this;
switch (_that) {
case PaymentOptions() when options != null:
return options(_that.card,_that.cod,_that.bank,_that.selected);case _:
  return null;

}
}

}

/// @nodoc


class PaymentOptions implements PaymentUiState {
  const PaymentOptions({required this.card, required this.cod, required this.bank, required this.selected});
  

@override final  bool card;
@override final  bool cod;
@override final  bool bank;
@override final  PaymentMethod selected;

/// Create a copy of PaymentUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentOptionsCopyWith<PaymentOptions> get copyWith => _$PaymentOptionsCopyWithImpl<PaymentOptions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentOptions&&(identical(other.card, card) || other.card == card)&&(identical(other.cod, cod) || other.cod == cod)&&(identical(other.bank, bank) || other.bank == bank)&&(identical(other.selected, selected) || other.selected == selected));
}


@override
int get hashCode => Object.hash(runtimeType,card,cod,bank,selected);

@override
String toString() {
  return 'PaymentUiState.options(card: $card, cod: $cod, bank: $bank, selected: $selected)';
}


}

/// @nodoc
abstract mixin class $PaymentOptionsCopyWith<$Res> implements $PaymentUiStateCopyWith<$Res> {
  factory $PaymentOptionsCopyWith(PaymentOptions value, $Res Function(PaymentOptions) _then) = _$PaymentOptionsCopyWithImpl;
@override @useResult
$Res call({
 bool card, bool cod, bool bank, PaymentMethod selected
});




}
/// @nodoc
class _$PaymentOptionsCopyWithImpl<$Res>
    implements $PaymentOptionsCopyWith<$Res> {
  _$PaymentOptionsCopyWithImpl(this._self, this._then);

  final PaymentOptions _self;
  final $Res Function(PaymentOptions) _then;

/// Create a copy of PaymentUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? card = null,Object? cod = null,Object? bank = null,Object? selected = null,}) {
  return _then(PaymentOptions(
card: null == card ? _self.card : card // ignore: cast_nullable_to_non_nullable
as bool,cod: null == cod ? _self.cod : cod // ignore: cast_nullable_to_non_nullable
as bool,bank: null == bank ? _self.bank : bank // ignore: cast_nullable_to_non_nullable
as bool,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as PaymentMethod,
  ));
}


}

/// @nodoc
mixin _$AddressSectionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressSectionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressSectionState()';
}


}

/// @nodoc
class $AddressSectionStateCopyWith<$Res>  {
$AddressSectionStateCopyWith(AddressSectionState _, $Res Function(AddressSectionState) __);
}


/// Adds pattern-matching-related methods to [AddressSectionState].
extension AddressSectionStatePatterns on AddressSectionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NeedHomeAddress value)?  needHome,TResult Function( NeedPickupStore value)?  needPickup,TResult Function( NoAddressInputs value)?  none,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NeedHomeAddress() when needHome != null:
return needHome(_that);case NeedPickupStore() when needPickup != null:
return needPickup(_that);case NoAddressInputs() when none != null:
return none(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NeedHomeAddress value)  needHome,required TResult Function( NeedPickupStore value)  needPickup,required TResult Function( NoAddressInputs value)  none,}){
final _that = this;
switch (_that) {
case NeedHomeAddress():
return needHome(_that);case NeedPickupStore():
return needPickup(_that);case NoAddressInputs():
return none(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NeedHomeAddress value)?  needHome,TResult? Function( NeedPickupStore value)?  needPickup,TResult? Function( NoAddressInputs value)?  none,}){
final _that = this;
switch (_that) {
case NeedHomeAddress() when needHome != null:
return needHome(_that);case NeedPickupStore() when needPickup != null:
return needPickup(_that);case NoAddressInputs() when none != null:
return none(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  needHome,TResult Function()?  needPickup,TResult Function()?  none,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NeedHomeAddress() when needHome != null:
return needHome();case NeedPickupStore() when needPickup != null:
return needPickup();case NoAddressInputs() when none != null:
return none();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  needHome,required TResult Function()  needPickup,required TResult Function()  none,}) {final _that = this;
switch (_that) {
case NeedHomeAddress():
return needHome();case NeedPickupStore():
return needPickup();case NoAddressInputs():
return none();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  needHome,TResult? Function()?  needPickup,TResult? Function()?  none,}) {final _that = this;
switch (_that) {
case NeedHomeAddress() when needHome != null:
return needHome();case NeedPickupStore() when needPickup != null:
return needPickup();case NoAddressInputs() when none != null:
return none();case _:
  return null;

}
}

}

/// @nodoc


class NeedHomeAddress implements AddressSectionState {
  const NeedHomeAddress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NeedHomeAddress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressSectionState.needHome()';
}


}




/// @nodoc


class NeedPickupStore implements AddressSectionState {
  const NeedPickupStore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NeedPickupStore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressSectionState.needPickup()';
}


}




/// @nodoc


class NoAddressInputs implements AddressSectionState {
  const NoAddressInputs();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoAddressInputs);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressSectionState.none()';
}


}




/// @nodoc
mixin _$BuyButtonState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BuyButtonState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BuyButtonState()';
}


}

/// @nodoc
class $BuyButtonStateCopyWith<$Res>  {
$BuyButtonStateCopyWith(BuyButtonState _, $Res Function(BuyButtonState) __);
}


/// Adds pattern-matching-related methods to [BuyButtonState].
extension BuyButtonStatePatterns on BuyButtonState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BuyEnabled value)?  enabled,TResult Function( BuyDisabled value)?  disabled,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BuyEnabled() when enabled != null:
return enabled(_that);case BuyDisabled() when disabled != null:
return disabled(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BuyEnabled value)  enabled,required TResult Function( BuyDisabled value)  disabled,}){
final _that = this;
switch (_that) {
case BuyEnabled():
return enabled(_that);case BuyDisabled():
return disabled(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BuyEnabled value)?  enabled,TResult? Function( BuyDisabled value)?  disabled,}){
final _that = this;
switch (_that) {
case BuyEnabled() when enabled != null:
return enabled(_that);case BuyDisabled() when disabled != null:
return disabled(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  enabled,TResult Function( String reason)?  disabled,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BuyEnabled() when enabled != null:
return enabled();case BuyDisabled() when disabled != null:
return disabled(_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  enabled,required TResult Function( String reason)  disabled,}) {final _that = this;
switch (_that) {
case BuyEnabled():
return enabled();case BuyDisabled():
return disabled(_that.reason);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  enabled,TResult? Function( String reason)?  disabled,}) {final _that = this;
switch (_that) {
case BuyEnabled() when enabled != null:
return enabled();case BuyDisabled() when disabled != null:
return disabled(_that.reason);case _:
  return null;

}
}

}

/// @nodoc


class BuyEnabled implements BuyButtonState {
  const BuyEnabled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BuyEnabled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BuyButtonState.enabled()';
}


}




/// @nodoc


class BuyDisabled implements BuyButtonState {
  const BuyDisabled(this.reason);
  

 final  String reason;

/// Create a copy of BuyButtonState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BuyDisabledCopyWith<BuyDisabled> get copyWith => _$BuyDisabledCopyWithImpl<BuyDisabled>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BuyDisabled&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'BuyButtonState.disabled(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $BuyDisabledCopyWith<$Res> implements $BuyButtonStateCopyWith<$Res> {
  factory $BuyDisabledCopyWith(BuyDisabled value, $Res Function(BuyDisabled) _then) = _$BuyDisabledCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$BuyDisabledCopyWithImpl<$Res>
    implements $BuyDisabledCopyWith<$Res> {
  _$BuyDisabledCopyWithImpl(this._self, this._then);

  final BuyDisabled _self;
  final $Res Function(BuyDisabled) _then;

/// Create a copy of BuyButtonState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(BuyDisabled(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
