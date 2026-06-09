// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePaymentResponse _$CreatePaymentResponseFromJson(
  Map<String, dynamic> json,
) => _CreatePaymentResponse(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: CreatePaymentData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreatePaymentResponseToJson(
  _CreatePaymentResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_CreatePaymentData _$CreatePaymentDataFromJson(Map<String, dynamic> json) =>
    _CreatePaymentData(
      payment: Payment.fromJson(json['payment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreatePaymentDataToJson(_CreatePaymentData instance) =>
    <String, dynamic>{'payment': instance.payment};

_Payment _$PaymentFromJson(Map<String, dynamic> json) => _Payment(
  id: (json['id'] as num).toInt(),
  reservationId: (json['reservation_id'] as num).toInt(),
  paymentMethodId: (json['payment_method_id'] as num).toInt(),
  amount: (json['amount'] as num).toInt(),
  status: json['status'] as String,
  paymentCode: json['payment_code'] as String,
  statusLabel: json['status_label'] as String,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$PaymentToJson(_Payment instance) => <String, dynamic>{
  'id': instance.id,
  'reservation_id': instance.reservationId,
  'payment_method_id': instance.paymentMethodId,
  'amount': instance.amount,
  'status': instance.status,
  'payment_code': instance.paymentCode,
  'status_label': instance.statusLabel,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
