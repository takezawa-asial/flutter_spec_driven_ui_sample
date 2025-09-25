// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_form_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderFormState {

 Order get order;
/// Create a copy of OrderFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderFormStateCopyWith<OrderFormState> get copyWith => _$OrderFormStateCopyWithImpl<OrderFormState>(this as OrderFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderFormState&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,order);

@override
String toString() {
  return 'OrderFormState(order: $order)';
}


}

/// @nodoc
abstract mixin class $OrderFormStateCopyWith<$Res>  {
  factory $OrderFormStateCopyWith(OrderFormState value, $Res Function(OrderFormState) _then) = _$OrderFormStateCopyWithImpl;
@useResult
$Res call({
 Order order
});


$OrderCopyWith<$Res> get order;

}
/// @nodoc
class _$OrderFormStateCopyWithImpl<$Res>
    implements $OrderFormStateCopyWith<$Res> {
  _$OrderFormStateCopyWithImpl(this._self, this._then);

  final OrderFormState _self;
  final $Res Function(OrderFormState) _then;

/// Create a copy of OrderFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? order = null,}) {
  return _then(_self.copyWith(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order,
  ));
}
/// Create a copy of OrderFormState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderCopyWith<$Res> get order {
  
  return $OrderCopyWith<$Res>(_self.order, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderFormState].
extension OrderFormStatePatterns on OrderFormState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderFormState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderFormState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderFormState value)  $default,){
final _that = this;
switch (_that) {
case _OrderFormState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderFormState value)?  $default,){
final _that = this;
switch (_that) {
case _OrderFormState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Order order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderFormState() when $default != null:
return $default(_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Order order)  $default,) {final _that = this;
switch (_that) {
case _OrderFormState():
return $default(_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Order order)?  $default,) {final _that = this;
switch (_that) {
case _OrderFormState() when $default != null:
return $default(_that.order);case _:
  return null;

}
}

}

/// @nodoc


class _OrderFormState implements OrderFormState {
  const _OrderFormState({required this.order});
  

@override final  Order order;

/// Create a copy of OrderFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderFormStateCopyWith<_OrderFormState> get copyWith => __$OrderFormStateCopyWithImpl<_OrderFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderFormState&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,order);

@override
String toString() {
  return 'OrderFormState(order: $order)';
}


}

/// @nodoc
abstract mixin class _$OrderFormStateCopyWith<$Res> implements $OrderFormStateCopyWith<$Res> {
  factory _$OrderFormStateCopyWith(_OrderFormState value, $Res Function(_OrderFormState) _then) = __$OrderFormStateCopyWithImpl;
@override @useResult
$Res call({
 Order order
});


@override $OrderCopyWith<$Res> get order;

}
/// @nodoc
class __$OrderFormStateCopyWithImpl<$Res>
    implements _$OrderFormStateCopyWith<$Res> {
  __$OrderFormStateCopyWithImpl(this._self, this._then);

  final _OrderFormState _self;
  final $Res Function(_OrderFormState) _then;

/// Create a copy of OrderFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? order = null,}) {
  return _then(_OrderFormState(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order,
  ));
}

/// Create a copy of OrderFormState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderCopyWith<$Res> get order {
  
  return $OrderCopyWith<$Res>(_self.order, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}

// dart format on
