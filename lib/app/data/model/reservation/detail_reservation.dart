import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_reservation.freezed.dart';
part 'detail_reservation.g.dart';

@freezed
abstract class ReservationDetailResponse with _$ReservationDetailResponse {
  const factory ReservationDetailResponse({
    required bool success,
    required String message,
    ReservationDetailData? data,
  }) = _ReservationDetailResponse;

  factory ReservationDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ReservationDetailResponseFromJson(json);
}

@freezed
abstract class ReservationDetailData with _$ReservationDetailData {
  const factory ReservationDetailData({
    required int id,

    @JsonKey(name: 'reservation_code') required String reservationCode,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'duration_month') required int durationMonth,
    @JsonKey(name: 'room_price') required int roomPrice,
    @JsonKey(name: 'admin_fee') required int adminFee,
    required int deposit,
    @JsonKey(name: 'total_price') required int totalPrice,

    @JsonKey(name: 'payment_due_at')
    String? paymentDueAt,

    @JsonKey(name: 'status_label')
    required String statusLabel,

    RoomDetail? room,
    PaymentDetail? payment,

    @JsonKey(name: 'status_histories')
    @Default([])
    List<StatusHistoryDetail> statusHistories,
  }) = _ReservationDetailData;

  factory ReservationDetailData.fromJson(Map<String, dynamic> json) =>
      _$ReservationDetailDataFromJson(json);
}

@freezed
abstract class RoomDetail with _$RoomDetail {
  const factory RoomDetail({
    required int id,

    @JsonKey(name: 'room_number') required String roomNumber,
    required String title,

    /// Dari backend dikirim string: "500000.00"

    @JsonKey(name: 'room_size') required String roomSize,
    required int floor,
    required int capacity,

  }) = _RoomDetail;

  factory RoomDetail.fromJson(Map<String, dynamic> json) =>
      _$RoomDetailFromJson(json);
}

@freezed
abstract class PaymentDetail with _$PaymentDetail {
  const factory PaymentDetail({
    required int id,

    @JsonKey(name: 'payment_proof') String? paymentProof,
    @JsonKey(name: 'payment_code') required String paymentCode,

    @JsonKey(name: 'payment_method') PaymentMethodDetail? paymentMethod,
  }) = _PaymentDetail;

  factory PaymentDetail.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailFromJson(json);
}

@freezed
abstract class PaymentMethodDetail with _$PaymentMethodDetail {
  const factory PaymentMethodDetail({
    required int id,
    required String name,
    required String type,
    required String provider,

    @JsonKey(name: 'account_number') required String accountNumber,
    @JsonKey(name: 'account_name') required String accountName,
  }) = _PaymentMethodDetail;

  factory PaymentMethodDetail.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodDetailFromJson(json);
}

@freezed
abstract class StatusHistoryDetail with _$StatusHistoryDetail {
  const factory StatusHistoryDetail({
    required int id,

    @JsonKey(name: 'reservation_id') required int reservationId,
    required String status,
    required String title,
    required String description,

  }) = _StatusHistoryDetail;

  factory StatusHistoryDetail.fromJson(Map<String, dynamic> json) =>
      _$StatusHistoryDetailFromJson(json);
}