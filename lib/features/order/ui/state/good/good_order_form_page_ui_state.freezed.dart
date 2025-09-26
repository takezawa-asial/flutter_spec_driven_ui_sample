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

 BannerState get banner; PaymentUiState get payment; AddressSectionState get address; BuyButtonState get buy; PaymentDetailState get paymentDetail; int get subtotal; int get discount; int get total;
/// Create a copy of GoodOrderFormPageUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoodOrderFormPageUiStateCopyWith<GoodOrderFormPageUiState> get copyWith => _$GoodOrderFormPageUiStateCopyWithImpl<GoodOrderFormPageUiState>(this as GoodOrderFormPageUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoodOrderFormPageUiState&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.address, address) || other.address == address)&&(identical(other.buy, buy) || other.buy == buy)&&(identical(other.paymentDetail, paymentDetail) || other.paymentDetail == paymentDetail)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,banner,payment,address,buy,paymentDetail,subtotal,discount,total);

@override
String toString() {
  return 'GoodOrderFormPageUiState(banner: $banner, payment: $payment, address: $address, buy: $buy, paymentDetail: $paymentDetail, subtotal: $subtotal, discount: $discount, total: $total)';
}


}

/// @nodoc
abstract mixin class $GoodOrderFormPageUiStateCopyWith<$Res>  {
  factory $GoodOrderFormPageUiStateCopyWith(GoodOrderFormPageUiState value, $Res Function(GoodOrderFormPageUiState) _then) = _$GoodOrderFormPageUiStateCopyWithImpl;
@useResult
$Res call({
 BannerState banner, PaymentUiState payment, AddressSectionState address, BuyButtonState buy, PaymentDetailState paymentDetail, int subtotal, int discount, int total
});


$BannerStateCopyWith<$Res> get banner;$PaymentUiStateCopyWith<$Res> get payment;$AddressSectionStateCopyWith<$Res> get address;$BuyButtonStateCopyWith<$Res> get buy;$PaymentDetailStateCopyWith<$Res> get paymentDetail;

}
/// @nodoc
class _$GoodOrderFormPageUiStateCopyWithImpl<$Res>
    implements $GoodOrderFormPageUiStateCopyWith<$Res> {
  _$GoodOrderFormPageUiStateCopyWithImpl(this._self, this._then);

  final GoodOrderFormPageUiState _self;
  final $Res Function(GoodOrderFormPageUiState) _then;

/// Create a copy of GoodOrderFormPageUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? banner = null,Object? payment = null,Object? address = null,Object? buy = null,Object? paymentDetail = null,Object? subtotal = null,Object? discount = null,Object? total = null,}) {
  return _then(_self.copyWith(
banner: null == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as BannerState,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentUiState,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressSectionState,buy: null == buy ? _self.buy : buy // ignore: cast_nullable_to_non_nullable
as BuyButtonState,paymentDetail: null == paymentDetail ? _self.paymentDetail : paymentDetail // ignore: cast_nullable_to_non_nullable
as PaymentDetailState,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
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
}/// Create a copy of GoodOrderFormPageUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentDetailStateCopyWith<$Res> get paymentDetail {
  
  return $PaymentDetailStateCopyWith<$Res>(_self.paymentDetail, (value) {
    return _then(_self.copyWith(paymentDetail: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BannerState banner,  PaymentUiState payment,  AddressSectionState address,  BuyButtonState buy,  PaymentDetailState paymentDetail,  int subtotal,  int discount,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoodOrderFormPageUiState() when $default != null:
return $default(_that.banner,_that.payment,_that.address,_that.buy,_that.paymentDetail,_that.subtotal,_that.discount,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BannerState banner,  PaymentUiState payment,  AddressSectionState address,  BuyButtonState buy,  PaymentDetailState paymentDetail,  int subtotal,  int discount,  int total)  $default,) {final _that = this;
switch (_that) {
case _GoodOrderFormPageUiState():
return $default(_that.banner,_that.payment,_that.address,_that.buy,_that.paymentDetail,_that.subtotal,_that.discount,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BannerState banner,  PaymentUiState payment,  AddressSectionState address,  BuyButtonState buy,  PaymentDetailState paymentDetail,  int subtotal,  int discount,  int total)?  $default,) {final _that = this;
switch (_that) {
case _GoodOrderFormPageUiState() when $default != null:
return $default(_that.banner,_that.payment,_that.address,_that.buy,_that.paymentDetail,_that.subtotal,_that.discount,_that.total);case _:
  return null;

}
}

}

/// @nodoc


class _GoodOrderFormPageUiState implements GoodOrderFormPageUiState {
  const _GoodOrderFormPageUiState({required this.banner, required this.payment, required this.address, required this.buy, required this.paymentDetail, required this.subtotal, required this.discount, required this.total});
  

@override final  BannerState banner;
@override final  PaymentUiState payment;
@override final  AddressSectionState address;
@override final  BuyButtonState buy;
@override final  PaymentDetailState paymentDetail;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoodOrderFormPageUiState&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.address, address) || other.address == address)&&(identical(other.buy, buy) || other.buy == buy)&&(identical(other.paymentDetail, paymentDetail) || other.paymentDetail == paymentDetail)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,banner,payment,address,buy,paymentDetail,subtotal,discount,total);

@override
String toString() {
  return 'GoodOrderFormPageUiState(banner: $banner, payment: $payment, address: $address, buy: $buy, paymentDetail: $paymentDetail, subtotal: $subtotal, discount: $discount, total: $total)';
}


}

/// @nodoc
abstract mixin class _$GoodOrderFormPageUiStateCopyWith<$Res> implements $GoodOrderFormPageUiStateCopyWith<$Res> {
  factory _$GoodOrderFormPageUiStateCopyWith(_GoodOrderFormPageUiState value, $Res Function(_GoodOrderFormPageUiState) _then) = __$GoodOrderFormPageUiStateCopyWithImpl;
@override @useResult
$Res call({
 BannerState banner, PaymentUiState payment, AddressSectionState address, BuyButtonState buy, PaymentDetailState paymentDetail, int subtotal, int discount, int total
});


@override $BannerStateCopyWith<$Res> get banner;@override $PaymentUiStateCopyWith<$Res> get payment;@override $AddressSectionStateCopyWith<$Res> get address;@override $BuyButtonStateCopyWith<$Res> get buy;@override $PaymentDetailStateCopyWith<$Res> get paymentDetail;

}
/// @nodoc
class __$GoodOrderFormPageUiStateCopyWithImpl<$Res>
    implements _$GoodOrderFormPageUiStateCopyWith<$Res> {
  __$GoodOrderFormPageUiStateCopyWithImpl(this._self, this._then);

  final _GoodOrderFormPageUiState _self;
  final $Res Function(_GoodOrderFormPageUiState) _then;

/// Create a copy of GoodOrderFormPageUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? banner = null,Object? payment = null,Object? address = null,Object? buy = null,Object? paymentDetail = null,Object? subtotal = null,Object? discount = null,Object? total = null,}) {
  return _then(_GoodOrderFormPageUiState(
banner: null == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as BannerState,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentUiState,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressSectionState,buy: null == buy ? _self.buy : buy // ignore: cast_nullable_to_non_nullable
as BuyButtonState,paymentDetail: null == paymentDetail ? _self.paymentDetail : paymentDetail // ignore: cast_nullable_to_non_nullable
as PaymentDetailState,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
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
}/// Create a copy of GoodOrderFormPageUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentDetailStateCopyWith<$Res> get paymentDetail {
  
  return $PaymentDetailStateCopyWith<$Res>(_self.paymentDetail, (value) {
    return _then(_self.copyWith(paymentDetail: value));
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BannerNone value)?  none,TResult Function( BannerInfo value)?  info,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BannerNone() when none != null:
return none(_that);case BannerInfo() when info != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BannerNone value)  none,required TResult Function( BannerInfo value)  info,}){
final _that = this;
switch (_that) {
case BannerNone():
return none(_that);case BannerInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BannerNone value)?  none,TResult? Function( BannerInfo value)?  info,}){
final _that = this;
switch (_that) {
case BannerNone() when none != null:
return none(_that);case BannerInfo() when info != null:
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
case BannerNone() when none != null:
return none();case BannerInfo() when info != null:
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
case BannerNone():
return none();case BannerInfo():
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
case BannerNone() when none != null:
return none();case BannerInfo() when info != null:
return info(_that.text);case _:
  return null;

}
}

}

/// @nodoc


class BannerNone implements BannerState {
  const BannerNone();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BannerNone);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BannerState.none()';
}


}




/// @nodoc


class BannerInfo implements BannerState {
  const BannerInfo(this.text);
  

 final  String text;

/// Create a copy of BannerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BannerInfoCopyWith<BannerInfo> get copyWith => _$BannerInfoCopyWithImpl<BannerInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BannerInfo&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'BannerState.info(text: $text)';
}


}

/// @nodoc
abstract mixin class $BannerInfoCopyWith<$Res> implements $BannerStateCopyWith<$Res> {
  factory $BannerInfoCopyWith(BannerInfo value, $Res Function(BannerInfo) _then) = _$BannerInfoCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$BannerInfoCopyWithImpl<$Res>
    implements $BannerInfoCopyWith<$Res> {
  _$BannerInfoCopyWithImpl(this._self, this._then);

  final BannerInfo _self;
  final $Res Function(BannerInfo) _then;

/// Create a copy of BannerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(BannerInfo(
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddressNeedHome value)?  needHome,TResult Function( AddressNeedPickup value)?  needPickup,TResult Function( AddressNone value)?  none,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddressNeedHome() when needHome != null:
return needHome(_that);case AddressNeedPickup() when needPickup != null:
return needPickup(_that);case AddressNone() when none != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddressNeedHome value)  needHome,required TResult Function( AddressNeedPickup value)  needPickup,required TResult Function( AddressNone value)  none,}){
final _that = this;
switch (_that) {
case AddressNeedHome():
return needHome(_that);case AddressNeedPickup():
return needPickup(_that);case AddressNone():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddressNeedHome value)?  needHome,TResult? Function( AddressNeedPickup value)?  needPickup,TResult? Function( AddressNone value)?  none,}){
final _that = this;
switch (_that) {
case AddressNeedHome() when needHome != null:
return needHome(_that);case AddressNeedPickup() when needPickup != null:
return needPickup(_that);case AddressNone() when none != null:
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
case AddressNeedHome() when needHome != null:
return needHome();case AddressNeedPickup() when needPickup != null:
return needPickup();case AddressNone() when none != null:
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
case AddressNeedHome():
return needHome();case AddressNeedPickup():
return needPickup();case AddressNone():
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
case AddressNeedHome() when needHome != null:
return needHome();case AddressNeedPickup() when needPickup != null:
return needPickup();case AddressNone() when none != null:
return none();case _:
  return null;

}
}

}

/// @nodoc


class AddressNeedHome implements AddressSectionState {
  const AddressNeedHome();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressNeedHome);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressSectionState.needHome()';
}


}




/// @nodoc


class AddressNeedPickup implements AddressSectionState {
  const AddressNeedPickup();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressNeedPickup);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressSectionState.needPickup()';
}


}




/// @nodoc


class AddressNone implements AddressSectionState {
  const AddressNone();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressNone);
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

/// @nodoc
mixin _$PaymentDetailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentDetailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentDetailState()';
}


}

/// @nodoc
class $PaymentDetailStateCopyWith<$Res>  {
$PaymentDetailStateCopyWith(PaymentDetailState _, $Res Function(PaymentDetailState) __);
}


/// Adds pattern-matching-related methods to [PaymentDetailState].
extension PaymentDetailStatePatterns on PaymentDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PaymentDetailNone value)?  none,TResult Function( PaymentDetailBank value)?  bank,TResult Function( PaymentDetailCard value)?  card,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaymentDetailNone() when none != null:
return none(_that);case PaymentDetailBank() when bank != null:
return bank(_that);case PaymentDetailCard() when card != null:
return card(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PaymentDetailNone value)  none,required TResult Function( PaymentDetailBank value)  bank,required TResult Function( PaymentDetailCard value)  card,}){
final _that = this;
switch (_that) {
case PaymentDetailNone():
return none(_that);case PaymentDetailBank():
return bank(_that);case PaymentDetailCard():
return card(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PaymentDetailNone value)?  none,TResult? Function( PaymentDetailBank value)?  bank,TResult? Function( PaymentDetailCard value)?  card,}){
final _that = this;
switch (_that) {
case PaymentDetailNone() when none != null:
return none(_that);case PaymentDetailBank() when bank != null:
return bank(_that);case PaymentDetailCard() when card != null:
return card(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  none,TResult Function()?  bank,TResult Function()?  card,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaymentDetailNone() when none != null:
return none();case PaymentDetailBank() when bank != null:
return bank();case PaymentDetailCard() when card != null:
return card();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  none,required TResult Function()  bank,required TResult Function()  card,}) {final _that = this;
switch (_that) {
case PaymentDetailNone():
return none();case PaymentDetailBank():
return bank();case PaymentDetailCard():
return card();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  none,TResult? Function()?  bank,TResult? Function()?  card,}) {final _that = this;
switch (_that) {
case PaymentDetailNone() when none != null:
return none();case PaymentDetailBank() when bank != null:
return bank();case PaymentDetailCard() when card != null:
return card();case _:
  return null;

}
}

}

/// @nodoc


class PaymentDetailNone implements PaymentDetailState {
  const PaymentDetailNone();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentDetailNone);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentDetailState.none()';
}


}




/// @nodoc


class PaymentDetailBank implements PaymentDetailState {
  const PaymentDetailBank();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentDetailBank);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentDetailState.bank()';
}


}




/// @nodoc


class PaymentDetailCard implements PaymentDetailState {
  const PaymentDetailCard();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentDetailCard);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentDetailState.card()';
}


}




// dart format on
