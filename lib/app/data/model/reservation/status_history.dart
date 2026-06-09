import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_history.freezed.dart';
part 'status_history.g.dart';

@freezed
abstract class StatusHistoryResponse with _$StatusHistoryResponse {
  const factory StatusHistoryResponse({
    required bool success,
    required String message,
    required List<StatusHistory> data,
  }) = _StatusHistoryResponse;

  factory StatusHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusHistoryResponseFromJson(json);
}

@freezed
abstract class StatusHistory with _$StatusHistory {
  const factory StatusHistory({
    required int id,

    @JsonKey(name: 'reservation_id')
    required int reservationId,

    required String status,

    required String title,

    required String description,

  }) = _StatusHistory;

  factory StatusHistory.fromJson(Map<String, dynamic> json) =>
      _$StatusHistoryFromJson(json);
}