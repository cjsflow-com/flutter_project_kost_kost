import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment.freezed.dart';
part 'payment.g.dart';

@freezed
abstract class CreatePaymentResponse with _$CreatePaymentResponse {
  const factory CreatePaymentResponse({
    required bool success,
    required String message,
    required CreatePaymentData data,
  }) = _CreatePaymentResponse;

  factory CreatePaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentResponseFromJson(json);
}

@freezed
abstract class CreatePaymentData with _$CreatePaymentData {
  const factory CreatePaymentData({
    required Payment payment,
  }) = _CreatePaymentData;

  factory CreatePaymentData.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentDataFromJson(json);
}

@freezed
abstract class Payment with _$Payment {
  const factory Payment({
    required int id,

    @JsonKey(name: 'reservation_id')
    required int reservationId,

    @JsonKey(name: 'payment_method_id')
    required String paymentMethodId,

    required String amount,

    required String status,

    @JsonKey(name: 'payment_code')
    required String paymentCode,

    @JsonKey(name: 'status_label')
    required String statusLabel,

    @JsonKey(name: 'created_at')
    required String createdAt,

    @JsonKey(name: 'updated_at')
    required String updatedAt,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}