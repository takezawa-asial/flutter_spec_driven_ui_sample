// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CouponNone _$CouponNoneFromJson(Map<String, dynamic> json) =>
    _CouponNone($type: json['type'] as String?);

Map<String, dynamic> _$CouponNoneToJson(_CouponNone instance) =>
    <String, dynamic>{'type': instance.$type};

_CouponPercentOff _$CouponPercentOffFromJson(Map<String, dynamic> json) =>
    _CouponPercentOff(
      percent: (json['percent'] as num?)?.toDouble() ?? 0.0,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CouponPercentOffToJson(_CouponPercentOff instance) =>
    <String, dynamic>{'percent': instance.percent, 'type': instance.$type};

_CouponFixedOff _$CouponFixedOffFromJson(Map<String, dynamic> json) =>
    _CouponFixedOff(
      amount: (json['amount'] as num?)?.toDouble() ?? 0.0,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CouponFixedOffToJson(_CouponFixedOff instance) =>
    <String, dynamic>{'amount': instance.amount, 'type': instance.$type};

_Address _$AddressFromJson(Map<String, dynamic> json) => _Address(
  postalCode: json['postalCode'] as String,
  line1: json['line1'] as String,
  line2: json['line2'] as String?,
  prefecture: json['prefecture'] as String?,
  city: json['city'] as String?,
  recipient: json['recipient'] as String?,
  phone: json['phone'] as String?,
);

Map<String, dynamic> _$AddressToJson(_Address instance) => <String, dynamic>{
  'postalCode': instance.postalCode,
  'line1': instance.line1,
  'line2': instance.line2,
  'prefecture': instance.prefecture,
  'city': instance.city,
  'recipient': instance.recipient,
  'phone': instance.phone,
};

_PickupStore _$PickupStoreFromJson(Map<String, dynamic> json) => _PickupStore(
  storeCode: json['storeCode'] as String,
  name: json['name'] as String?,
);

Map<String, dynamic> _$PickupStoreToJson(_PickupStore instance) =>
    <String, dynamic>{'storeCode': instance.storeCode, 'name': instance.name};

_OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => _OrderItem(
  sku: json['sku'] as String,
  name: json['name'] as String,
  unitPrice: (json['unitPrice'] as num).toInt(),
  quantity: (json['quantity'] as num?)?.toInt() ?? 1,
  stock: $enumDecodeNullable(_$StockEnumMap, json['stock']) ?? Stock.inStock,
);

Map<String, dynamic> _$OrderItemToJson(_OrderItem instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'name': instance.name,
      'unitPrice': instance.unitPrice,
      'quantity': instance.quantity,
      'stock': _$StockEnumMap[instance.stock]!,
    };

const _$StockEnumMap = {
  Stock.inStock: 'inStock',
  Stock.limited: 'limited',
  Stock.soldOut: 'soldOut',
};

_Order _$OrderFromJson(Map<String, dynamic> json) => _Order(
  id: json['id'] as String,
  orderType:
      $enumDecodeNullable(_$OrderTypeEnumMap, json['orderType']) ??
      OrderType.normal,
  items: (json['items'] as List<dynamic>)
      .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  shipment:
      $enumDecodeNullable(_$ShipmentEnumMap, json['shipment']) ?? Shipment.home,
  paymentMethod:
      $enumDecodeNullable(_$PaymentMethodEnumMap, json['paymentMethod']) ??
      PaymentMethod.card,
  coupon: json['coupon'] == null
      ? const Coupon.none()
      : Coupon.fromJson(json['coupon'] as Map<String, dynamic>),
  shippingAddress: json['shippingAddress'] == null
      ? null
      : Address.fromJson(json['shippingAddress'] as Map<String, dynamic>),
  pickupStore: json['pickupStore'] == null
      ? null
      : PickupStore.fromJson(json['pickupStore'] as Map<String, dynamic>),
  isPreorder: json['isPreorder'] as bool? ?? false,
);

Map<String, dynamic> _$OrderToJson(_Order instance) => <String, dynamic>{
  'id': instance.id,
  'orderType': _$OrderTypeEnumMap[instance.orderType]!,
  'items': instance.items,
  'shipment': _$ShipmentEnumMap[instance.shipment]!,
  'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
  'coupon': instance.coupon,
  'shippingAddress': instance.shippingAddress,
  'pickupStore': instance.pickupStore,
  'isPreorder': instance.isPreorder,
};

const _$OrderTypeEnumMap = {
  OrderType.normal: 'normal',
  OrderType.subscription: 'subscription',
  OrderType.preorder: 'preorder',
};

const _$ShipmentEnumMap = {Shipment.home: 'home', Shipment.pickup: 'pickup'};

const _$PaymentMethodEnumMap = {
  PaymentMethod.card: 'card',
  PaymentMethod.cod: 'cod',
  PaymentMethod.bank: 'bank',
};
