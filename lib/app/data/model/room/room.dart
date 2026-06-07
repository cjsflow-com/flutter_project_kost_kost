import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
abstract class RoomResponse with _$RoomResponse {
  const factory RoomResponse({
    required bool success,
    required String message,
    required RoomData data, // data sekarang berisi rooms + pagination
  }) = _RoomResponse;

  factory RoomResponse.fromJson(Map<String, dynamic> json) => _$RoomResponseFromJson(json);
}

@freezed
abstract class RoomData with _$RoomData {
  const factory RoomData({
    required List<Room> rooms,
    required Pagination pagination,
  }) = _RoomData;

  factory RoomData.fromJson(Map<String, dynamic> json) => _$RoomDataFromJson(json);

}

@freezed
abstract class Pagination with _$Pagination {
  const factory Pagination({
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'last_page') required int lastPage,
    @JsonKey(name: 'per_page') required int perPage,
    required int total,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);
}

// Room, Facility, RoomImage tetap seperti sebelumnya
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
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}

@freezed
abstract class Facility with _$Facility {
  const factory Facility({
    required int id,
    required String name,
    required String icon,
  }) = _Facility;

  factory Facility.fromJson(Map<String, dynamic> json) => _$FacilityFromJson(json);
}

@freezed
abstract class RoomImage with _$RoomImage {
  const factory RoomImage({
    required int id,
    @JsonKey(name: 'room_id') required int roomId,
    required String image,
  }) = _RoomImage;

  factory RoomImage.fromJson(Map<String, dynamic> json) => _$RoomImageFromJson(json);
}