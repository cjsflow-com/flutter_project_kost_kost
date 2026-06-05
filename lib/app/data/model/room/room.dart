import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';


@freezed
abstract class RoomResponse with _$RoomResponse{
  const factory RoomResponse({
    required bool success,
    required RoomData data,
    required String message,
}) = _RoomResponse;
  factory RoomResponse.fromJson(Map<String, dynamic> json) => _$RoomResponseFromJson(json);
}

@freezed
abstract class RoomData with _$RoomData{
  const factory RoomData({
    required List<Room> room,
    required Pagination pagination,
  }) = _RoomData;
  factory RoomData.fromJson(Map<String, dynamic> json) => _$RoomDataFromJson(json);
}

@freezed
abstract class Room with _$Room{
  const factory Room({
    required int id,
    required String name,
    required int price,
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
  }) = _Facility;

  factory Facility.fromJson(Map<String, dynamic> json) => _$FacilityFromJson(json);
}

@freezed
abstract class RoomImage with _$RoomImage {
  const factory RoomImage({
    required int id,
    required String url,
  }) = _RoomImage;

  factory RoomImage.fromJson(Map<String, dynamic> json) => _$RoomImageFromJson(json);
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