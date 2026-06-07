// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReservationResponse _$ReservationResponseFromJson(Map<String, dynamic> json) =>
    _ReservationResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      reservation:
          json['reservation'] == null
              ? null
              : Reservation.fromJson(
                json['reservation'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$ReservationResponseToJson(
  _ReservationResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'reservation': instance.reservation,
};

_Reservation _$ReservationFromJson(Map<String, dynamic> json) => _Reservation(
  id: (json['id'] as num).toInt(),
  reservationCode: json['reservation_code'] as String,
  roomId: (json['room_id'] as num).toInt(),
  startDate: json['start_date'] as String,
  durationMonth: (json['duration_month'] as num).toInt(),
  roomPrice: (json['room_price'] as num).toDouble(),
  adminFee: (json['admin_fee'] as num).toInt(),
  deposit: (json['deposit'] as num).toInt(),
  totalPrice: (json['total_price'] as num).toInt(),
  statusLabel: json['status_label'] as String,
);

Map<String, dynamic> _$ReservationToJson(_Reservation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reservation_code': instance.reservationCode,
      'room_id': instance.roomId,
      'start_date': instance.startDate,
      'duration_month': instance.durationMonth,
      'room_price': instance.roomPrice,
      'admin_fee': instance.adminFee,
      'deposit': instance.deposit,
      'total_price': instance.totalPrice,
      'status_label': instance.statusLabel,
    };
