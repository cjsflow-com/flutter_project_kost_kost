// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IndexReservationResponse _$IndexReservationResponseFromJson(
  Map<String, dynamic> json,
) => _IndexReservationResponse(
  success: json['success'] as bool,
  message: json['message'] as String,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => IndexReservation.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$IndexReservationResponseToJson(
  _IndexReservationResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_IndexReservation _$IndexReservationFromJson(Map<String, dynamic> json) =>
    _IndexReservation(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      roomId: (json['room_id'] as num).toInt(),
      reservationCode: json['reservation_code'] as String,
      customerKtpCard: json['customer_ktp_card'] as String?,
      startDate: json['start_date'] as String,
      durationMonth: (json['duration_month'] as num).toInt(),
      roomPrice: json['room_price'] as String,
      adminFee: json['admin_fee'] as String,
      deposit: json['deposit'] as String,
      totalPrice: json['total_price'] as String,
      status: json['status'] as String,
      statusLabel: json['status_label'] as String,
    );

Map<String, dynamic> _$IndexReservationToJson(_IndexReservation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'room_id': instance.roomId,
      'reservation_code': instance.reservationCode,
      'customer_ktp_card': instance.customerKtpCard,
      'start_date': instance.startDate,
      'duration_month': instance.durationMonth,
      'room_price': instance.roomPrice,
      'admin_fee': instance.adminFee,
      'deposit': instance.deposit,
      'total_price': instance.totalPrice,
      'status': instance.status,
      'status_label': instance.statusLabel,
    };
