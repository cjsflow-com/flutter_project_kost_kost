import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'index_reservation.freezed.dart';
part 'index_reservation.g.dart';

@freezed
abstract class IndexReservationResponse with _$IndexReservationResponse{
  const factory IndexReservationResponse({
    required bool success,
    required String message,
    List<IndexReservation>? data,
}) = _IndexReservationResponse;

    factory IndexReservationResponse.fromJson(Map<String, dynamic> json) => _$IndexReservationResponseFromJson(json);
}


@freezed
abstract class IndexReservation  with _$IndexReservation {
  const factory IndexReservation({
    required int id,

    @JsonKey(name: 'user_id')
    int? userId,

    @JsonKey(name: 'room_id')
    required int roomId,

    @JsonKey(name: 'reservation_code')
    required String reservationCode,

    @JsonKey(name: 'customer_ktp_card')
    String? customerKtpCard,

    @JsonKey(name: 'start_date')
    required String startDate,

    @JsonKey(name: 'duration_month')
    required int durationMonth,

    @JsonKey(name: 'room_price')
    required int roomPrice,

    @JsonKey(name: 'admin_fee')
    required int adminFee,

    required int deposit,

    @JsonKey(name: 'total_price')
    required int totalPrice,

    required String status,

    // @JsonKey(name: 'payment_due_at')
    // String? paymentDueAt,
    //
    // @JsonKey(name: 'approved_at')
    // String? approvedAt,
    //
    // @JsonKey(name: 'rejected_at')
    // String? rejectedAt,
    //
    // @JsonKey(name: 'cancelled_at')
    // String? cancelledAt,
    //
    // @JsonKey(name: 'expired_at')
    // String? expiredAt,
    //
    // String? note,
    //
    // @JsonKey(name: 'created_at')
    // required String createdAt,
    //
    // @JsonKey(name: 'updated_at')
    // required String updatedAt,

    // @JsonKey(name: 'customer_id')
    // required int customerId,

    @JsonKey(name: 'status_label')
    required String statusLabel,
  }) = _IndexReservation;

  factory IndexReservation.fromJson(Map<String, dynamic> json) =>
      _$IndexReservationFromJson(json);
}