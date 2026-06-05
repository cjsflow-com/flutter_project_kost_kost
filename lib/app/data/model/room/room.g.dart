// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoomResponse _$RoomResponseFromJson(Map<String, dynamic> json) =>
    _RoomResponse(
      success: json['success'] as bool,
      data: RoomData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$RoomResponseToJson(_RoomResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_RoomData _$RoomDataFromJson(Map<String, dynamic> json) => _RoomData(
  room:
      (json['room'] as List<dynamic>)
          .map((e) => Room.fromJson(e as Map<String, dynamic>))
          .toList(),
  pagination: Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RoomDataToJson(_RoomData instance) => <String, dynamic>{
  'room': instance.room,
  'pagination': instance.pagination,
};

_Room _$RoomFromJson(Map<String, dynamic> json) => _Room(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  price: (json['price'] as num).toInt(),
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
  'name': instance.name,
  'price': instance.price,
  'facilities': instance.facilities,
  'images': instance.images,
};

_Facility _$FacilityFromJson(Map<String, dynamic> json) =>
    _Facility(id: (json['id'] as num).toInt(), name: json['name'] as String);

Map<String, dynamic> _$FacilityToJson(_Facility instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

_RoomImage _$RoomImageFromJson(Map<String, dynamic> json) =>
    _RoomImage(id: (json['id'] as num).toInt(), url: json['url'] as String);

Map<String, dynamic> _$RoomImageToJson(_RoomImage instance) =>
    <String, dynamic>{'id': instance.id, 'url': instance.url};

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
