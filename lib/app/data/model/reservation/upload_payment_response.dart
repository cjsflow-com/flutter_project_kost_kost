
import 'package:freezed_annotation/freezed_annotation.dart';
part 'upload_payment_response.freezed.dart';
part 'upload_payment_response.g.dart';

@freezed
abstract class UploadPaymentResponse with _$UploadPaymentResponse{
  const factory UploadPaymentResponse({
    required bool success,
    required String message,
}) = _UploadPaymentResponse;

  factory UploadPaymentResponse.fromJson(Map<String, dynamic> json) => _$UploadPaymentResponseFromJson(json);
}