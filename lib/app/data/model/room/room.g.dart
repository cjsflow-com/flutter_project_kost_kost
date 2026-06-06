// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoomResponse _$RoomResponseFromJson(Map<String, dynamic> json) =>
    _RoomResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: RoomData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoomResponseToJson(_RoomResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_RoomData _$RoomDataFromJson(Map<String, dynamic> json) => _RoomData(
  rooms:
      (json['rooms'] as List<dynamic>)
          .map((e) => Room.fromJson(e as Map<String, dynamic>))
          .toList(),
  pagination: Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RoomDataToJson(_RoomData instance) => <String, dynamic>{
  'rooms': instance.rooms,
  'pagination': instance.pagination,
};

_Pagination _$PaginationFromJson(Map<String, dynamic> json) => _Pagination(
  currentPage: (json['current_page'] as num).toInt(),
  lastPage: (json['last_page'] as num).toInt(),
  perPage: (json['per_page'] as num).toInt(),
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$PaginationToJson(_Pagination instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'per_page': instance.perPage,
      'total': instance.total,
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
};

_Facility _$FacilityFromJson(Map<String, dynamic> json) => _Facility(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  icon: json['icon'] as String,
);

Map<String, dynamic> _$FacilityToJson(_Facility instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'icon': instance.icon,
};

_RoomImage _$RoomImageFromJson(Map<String, dynamic> json) => _RoomImage(
  id: (json['id'] as num).toInt(),
  roomId: (json['room_id'] as num).toInt(),
  image: json['image'] as String,
);

Map<String, dynamic> _$RoomImageToJson(_RoomImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'room_id': instance.roomId,
      'image': instance.image,
    };
