// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UploadPaymentResponse _$UploadPaymentResponseFromJson(
  Map<String, dynamic> json,
) => _UploadPaymentResponse(
  success: json['success'] as bool,
  message: json['message'] as String,
);

Map<String, dynamic> _$UploadPaymentResponseToJson(
  _UploadPaymentResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
};
