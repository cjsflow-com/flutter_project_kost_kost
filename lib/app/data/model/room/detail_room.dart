import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rimbun_cicio_kost/app/data/model/room/room.dart';

part 'detail_room.freezed.dart';
part 'detail_room.g.dart';

@freezed
abstract class RoomDetailResponse with _$RoomDetailResponse{
  const factory RoomDetailResponse({
    required bool success,
    required String message,
    required Room data,
}) = _RoomDetailResponse;
  factory RoomDetailResponse.fromJson(Map<String, dynamic> json) => _$RoomDetailResponseFromJson(json);
}

@freezed
abstract class Room with _$Room {
  const factory Room({
    required String id,
    @JsonKey(name: 'room_number') required String roomNumber,
    required String title,
    required String description,
    @JsonKey(name: 'price_per_month') required int pricePerMonth,
    @JsonKey(name: 'room_size') required String roomSize,
    required int floor,
    required int capacity,
    @JsonKey(name: 'status_id') required int statusId,
    @JsonKey(name: 'status_name') required String statusName,
    required String thumbnail,
    required List<Facility> facilities,
    required List<RoomImage> images,
    @JsonKey(name: 'general_facilities') List<dynamic>? generalFacilities,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}