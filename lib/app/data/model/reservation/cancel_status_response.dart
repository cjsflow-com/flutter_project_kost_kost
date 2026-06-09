import 'package:freezed_annotation/freezed_annotation.dart';
part 'cancel_status_response.freezed.dart';
part 'cancel_status_response.g.dart';

@freezed
abstract class CancelStatusResponse with _$CancelStatusResponse{
  const factory CancelStatusResponse({
    required bool success,
    required String message,
}) = _CancelStatusResponse;

  factory CancelStatusResponse.fromJson(Map<String, dynamic> json) => _$CancelStatusResponseFromJson(json);
}