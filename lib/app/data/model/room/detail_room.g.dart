// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoomDetailResponse _$RoomDetailResponseFromJson(Map<String, dynamic> json) =>
    _RoomDetailResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: Room.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoomDetailResponseToJson(_RoomDetailResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_Room _$RoomFromJson(Map<String, dynamic> json) => _Room(
  id: (json['id'] as num).toInt(),
  roomNumber: json['room_number'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  pricePerMonth: (json['price_per_month'] as num).toInt(),
  roomSize: json['room_size'] as String,
  floor: (json['floor'] as num).toInt(),
  capacity: (json['capacity'] as num).toInt(),
  statusId: (json['status_id'] as num).toInt(),
  statusName: json['status_name'] as String,
  thumbnail: json['thumbnail'] as String,
  facilities:
      (json['facilities'] as List<dynamic>)
          .map((e) => Facility.fromJson(e as Map<String, dynamic>))
          .toList(),
  images:
      (json['images'] as List<dynamic>)
          .map((e) => RoomImage.fromJson(e as Map<String, dynamic>))
          .toList(),
  generalFacilities: json['general_facilities'] as List<dynamic>?,
);

Map<String, dynamic> _$RoomToJson(_Room instance) => <String, dynamic>{
  'id': instance.id,
  'room_number': instance.roomNumber,
  'title': instance.title,
  'description': instance.description,
  'price_per_month': instance.pricePerMonth,
  'room_size': instance.roomSize,
  'floor': instance.floor,
  'capacity': instance.capacity,
  'status_id': instance.statusId,
  'status_name': instance.statusName,
  'thumbnail': instance.thumbnail,
  'facilities': instance.facilities,
  'images': instance.images,
  'general_facilities': instance.generalFacilities,
};
