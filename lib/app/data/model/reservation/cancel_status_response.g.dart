// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CancelStatusResponse _$CancelStatusResponseFromJson(
  Map<String, dynamic> json,
) => _CancelStatusResponse(
  success: json['success'] as bool,
  message: json['message'] as String,
);

Map<String, dynamic> _$CancelStatusResponseToJson(
  _CancelStatusResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
};
