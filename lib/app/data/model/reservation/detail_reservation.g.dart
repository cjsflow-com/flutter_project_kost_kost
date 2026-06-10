// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReservationDetailResponse _$ReservationDetailResponseFromJson(
  Map<String, dynamic> json,
) => _ReservationDetailResponse(
  success: json['success'] as bool,
  message: json['message'] as String,
  data:
      json['data'] == null
          ? null
          : ReservationDetailData.fromJson(
            json['data'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$ReservationDetailResponseToJson(
  _ReservationDetailResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_ReservationDetailData _$ReservationDetailDataFromJson(
  Map<String, dynamic> json,
) => _ReservationDetailData(
  id: (json['id'] as num).toInt(),
  reservationCode: json['reservation_code'] as String,
  startDate: json['start_date'] as String,
  durationMonth: (json['duration_month'] as num).toInt(),
  roomPrice: (json['room_price'] as num).toInt(),
  adminFee: (json['admin_fee'] as num).toInt(),
  deposit: (json['deposit'] as num).toInt(),
  totalPrice: (json['total_price'] as num).toInt(),
  paymentDueAt: json['payment_due_at'] as String?,
  statusLabel: json['status_label'] as String,
  room:
      json['room'] == null
          ? null
          : RoomDetail.fromJson(json['room'] as Map<String, dynamic>),
  payment:
      json['payment'] == null
          ? null
          : PaymentDetail.fromJson(json['payment'] as Map<String, dynamic>),
  statusHistories:
      (json['status_histories'] as List<dynamic>?)
          ?.map((e) => StatusHistoryDetail.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ReservationDetailDataToJson(
  _ReservationDetailData instance,
) => <String, dynamic>{
  'id': instance.id,
  'reservation_code': instance.reservationCode,
  'start_date': instance.startDate,
  'duration_month': instance.durationMonth,
  'room_price': instance.roomPrice,
  'admin_fee': instance.adminFee,
  'deposit': instance.deposit,
  'total_price': instance.totalPrice,
  'payment_due_at': instance.paymentDueAt,
  'status_label': instance.statusLabel,
  'room': instance.room,
  'payment': instance.payment,
  'status_histories': instance.statusHistories,
};

_RoomDetail _$RoomDetailFromJson(Map<String, dynamic> json) => _RoomDetail(
  id: (json['id'] as num).toInt(),
  roomNumber: json['room_number'] as String,
  title: json['title'] as String,
  roomSize: json['room_size'] as String,
  floor: (json['floor'] as num).toInt(),
  capacity: (json['capacity'] as num).toInt(),
);

Map<String, dynamic> _$RoomDetailToJson(_RoomDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'room_number': instance.roomNumber,
      'title': instance.title,
      'room_size': instance.roomSize,
      'floor': instance.floor,
      'capacity': instance.capacity,
    };

_PaymentDetail _$PaymentDetailFromJson(Map<String, dynamic> json) =>
    _PaymentDetail(
      id: (json['id'] as num).toInt(),
      paymentProof: json['payment_proof'] as String?,
      paymentCode: json['payment_code'] as String,
      paymentMethod:
          json['payment_method'] == null
              ? null
              : PaymentMethodDetail.fromJson(
                json['payment_method'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$PaymentDetailToJson(_PaymentDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'payment_proof': instance.paymentProof,
      'payment_code': instance.paymentCode,
      'payment_method': instance.paymentMethod,
    };

_PaymentMethodDetail _$PaymentMethodDetailFromJson(Map<String, dynamic> json) =>
    _PaymentMethodDetail(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
      provider: json['provider'] as String,
      accountNumber: json['account_number'] as String,
      accountName: json['account_name'] as String,
    );

Map<String, dynamic> _$PaymentMethodDetailToJson(
  _PaymentMethodDetail instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': instance.type,
  'provider': instance.provider,
  'account_number': instance.accountNumber,
  'account_name': instance.accountName,
};

_StatusHistoryDetail _$StatusHistoryDetailFromJson(Map<String, dynamic> json) =>
    _StatusHistoryDetail(
      id: (json['id'] as num).toInt(),
      reservationId: (json['reservation_id'] as num).toInt(),
      status: json['status'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$StatusHistoryDetailToJson(
  _StatusHistoryDetail instance,
) => <String, dynamic>{
  'id': instance.id,
  'reservation_id': instance.reservationId,
  'status': instance.status,
  'title': instance.title,
  'description': instance.description,
};
