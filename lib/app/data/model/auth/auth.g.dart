// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Auth _$AuthFromJson(Map<String, dynamic> json) => _Auth(
  success: json['success'] as bool,
  message: json['message'] as String,
  token: json['token'] as String,
  customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AuthToJson(_Auth instance) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'token': instance.token,
  'customer': instance.customer,
};

_Customer _$CustomerFromJson(Map<String, dynamic> json) => _Customer(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String,
  gender: (json['gender'] as num).toInt(),
  created_at: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$CustomerToJson(_Customer instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'gender': instance.gender,
  'created_at': instance.created_at,
  'updated_at': instance.updatedAt,
};
