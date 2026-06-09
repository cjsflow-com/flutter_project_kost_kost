// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatusHistoryResponse _$StatusHistoryResponseFromJson(
  Map<String, dynamic> json,
) => _StatusHistoryResponse(
  success: json['success'] as bool,
  message: json['message'] as String,
  data:
      (json['data'] as List<dynamic>)
          .map((e) => StatusHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$StatusHistoryResponseToJson(
  _StatusHistoryResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_StatusHistory _$StatusHistoryFromJson(Map<String, dynamic> json) =>
    _StatusHistory(
      id: (json['id'] as num).toInt(),
      reservationId: (json['reservation_id'] as num).toInt(),
      status: json['status'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$StatusHistoryToJson(_StatusHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reservation_id': instance.reservationId,
      'status': instance.status,
      'title': instance.title,
      'description': instance.description,
    };
