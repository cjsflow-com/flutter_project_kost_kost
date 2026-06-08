// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentMethodResponse _$PaymentMethodResponseFromJson(
  Map<String, dynamic> json,
) => _PaymentMethodResponse(
  success: json['success'] as bool,
  message: json['message'] as String,
  data:
      (json['data'] as List<dynamic>)
          .map((e) => PaymentMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$PaymentMethodResponseToJson(
  _PaymentMethodResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    _PaymentMethod(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
      provider: json['provider'] as String?,
      accountNumber: json['account_number'] as String?,
      accountName: json['account_name'] as String?,
      isActive: (json['is_active'] as num).toInt(),
      typeName: json['type_name'] as String,
    );

Map<String, dynamic> _$PaymentMethodToJson(_PaymentMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'provider': instance.provider,
      'account_number': instance.accountNumber,
      'account_name': instance.accountName,
      'is_active': instance.isActive,
      'type_name': instance.typeName,
    };
