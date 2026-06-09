import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation.freezed.dart';
part 'reservation.g.dart';

@freezed
abstract class ReservationResponse with _$ReservationResponse {
  const factory ReservationResponse({
    required bool success,
    required String message,
    ReservationData? data,
  }) = _ReservationResponse;

  factory ReservationResponse.fromJson(Map<String, dynamic> json) =>
      _$ReservationResponseFromJson(json);
}

@freezed
abstract class ReservationData with _$ReservationData {
  const factory ReservationData({
    Reservation? reservation,
  }) = _ReservationData;

  factory ReservationData.fromJson(Map<String, dynamic> json) =>
      _$ReservationDataFromJson(json);
}

@freezed
abstract class Reservation with _$Reservation {
  const factory Reservation({
    required int id,

    @JsonKey(name: 'reservation_code')
    required String reservationCode,

    @JsonKey(name: 'customer_id')
    required int customerId,

    @JsonKey(name: 'room_id')
    required int roomId,

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

    @JsonKey(name: 'status_label')
    required String statusLabel,
  }) = _Reservation;

  factory Reservation.fromJson(Map<String, dynamic> json) =>
      _$ReservationFromJson(json);
}