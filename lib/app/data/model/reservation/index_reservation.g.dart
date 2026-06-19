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
      roomPrice: (json['room_price'] as num).toInt(),
      adminFee: (json['admin_fee'] as num).toInt(),
      deposit: (json['deposit'] as num).toInt(),
      totalPrice: (json['total_price'] as num).toInt(),
      status: json['status'] as String,
      paymentDueAt: json['payment_due_at'] as String?,
      payment:
          json['payment'] == null
              ? null
              : IndexReservationPayment.fromJson(
                json['payment'] as Map<String, dynamic>,
              ),
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
      'payment_due_at': instance.paymentDueAt,
      'payment': instance.payment,
      'status_label': instance.statusLabel,
    };

_IndexReservationPayment _$IndexReservationPaymentFromJson(
  Map<String, dynamic> json,
) => _IndexReservationPayment(
  id: (json['id'] as num).toInt(),
  reservationId: (json['reservation_id'] as num).toInt(),
  paymentMethodId: (json['payment_method_id'] as num).toInt(),
  paymentProof: json['payment_proof'] as String?,
  paymentCode: json['payment_code'] as String,
  amount: json['amount'] as String,
  status: json['status'] as String,
  paidAt: json['paid_at'] as String?,
  uploadedAt: json['uploaded_at'] as String?,
  verifiedAt: json['verified_at'] as String?,
  rejectedAt: json['rejected_at'] as String?,
  note: json['note'] as String?,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
  statusLabel: json['status_label'] as String,
);

Map<String, dynamic> _$IndexReservationPaymentToJson(
  _IndexReservationPayment instance,
) => <String, dynamic>{
  'id': instance.id,
  'reservation_id': instance.reservationId,
  'payment_method_id': instance.paymentMethodId,
  'payment_proof': instance.paymentProof,
  'payment_code': instance.paymentCode,
  'amount': instance.amount,
  'status': instance.status,
  'paid_at': instance.paidAt,
  'uploaded_at': instance.uploadedAt,
  'verified_at': instance.verifiedAt,
  'rejected_at': instance.rejectedAt,
  'note': instance.note,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'status_label': instance.statusLabel,
};
