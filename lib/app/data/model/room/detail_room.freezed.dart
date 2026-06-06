// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoomDetailResponse {

 bool get success; String get message; Room get data;
/// Create a copy of RoomDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomDetailResponseCopyWith<RoomDetailResponse> get copyWith => _$RoomDetailResponseCopyWithImpl<RoomDetailResponse>(this as RoomDetailResponse, _$identity);

  /// Serializes this RoomDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomDetailResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'RoomDetailResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $RoomDetailResponseCopyWith<$Res>  {
  factory $RoomDetailResponseCopyWith(RoomDetailResponse value, $Res Function(RoomDetailResponse) _then) = _$RoomDetailResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, Room data
});


$RoomCopyWith<$Res> get data;

}
/// @nodoc
class _$RoomDetailResponseCopyWithImpl<$Res>
    implements $RoomDetailResponseCopyWith<$Res> {
  _$RoomDetailResponseCopyWithImpl(this._self, this._then);

  final RoomDetailResponse _self;
  final $Res Function(RoomDetailResponse) _then;

/// Create a copy of RoomDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Room,
  ));
}
/// Create a copy of RoomDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomCopyWith<$Res> get data {
  
  return $RoomCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [RoomDetailResponse].
extension RoomDetailResponsePatterns on RoomDetailResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomDetailResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _RoomDetailResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RoomDetailResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  Room data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomDetailResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  Room data)  $default,) {final _that = this;
switch (_that) {
case _RoomDetailResponse():
return $default(_that.success,_that.message,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  Room data)?  $default,) {final _that = this;
switch (_that) {
case _RoomDetailResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoomDetailResponse implements RoomDetailResponse {
  const _RoomDetailResponse({required this.success, required this.message, required this.data});
  factory _RoomDetailResponse.fromJson(Map<String, dynamic> json) => _$RoomDetailResponseFromJson(json);

@override final  bool success;
@override final  String message;
@override final  Room data;

/// Create a copy of RoomDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomDetailResponseCopyWith<_RoomDetailResponse> get copyWith => __$RoomDetailResponseCopyWithImpl<_RoomDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoomDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomDetailResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'RoomDetailResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$RoomDetailResponseCopyWith<$Res> implements $RoomDetailResponseCopyWith<$Res> {
  factory _$RoomDetailResponseCopyWith(_RoomDetailResponse value, $Res Function(_RoomDetailResponse) _then) = __$RoomDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, Room data
});


@override $RoomCopyWith<$Res> get data;

}
/// @nodoc
class __$RoomDetailResponseCopyWithImpl<$Res>
    implements _$RoomDetailResponseCopyWith<$Res> {
  __$RoomDetailResponseCopyWithImpl(this._self, this._then);

  final _RoomDetailResponse _self;
  final $Res Function(_RoomDetailResponse) _then;

/// Create a copy of RoomDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,}) {
  return _then(_RoomDetailResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Room,
  ));
}

/// Create a copy of RoomDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomCopyWith<$Res> get data {
  
  return $RoomCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$Room {

 int get id;@JsonKey(name: 'room_number') String get roomNumber; String get title; String get description;@JsonKey(name: 'price_per_month') int get pricePerMonth;@JsonKey(name: 'room_size') String get roomSize; int get floor; int get capacity;@JsonKey(name: 'status_id') int get statusId;@JsonKey(name: 'status_name') String get statusName; String get thumbnail; List<Facility> get facilities; List<RoomImage> get images;@JsonKey(name: 'general_facilities') List<dynamic>? get generalFacilities;
/// Create a copy of Room
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomCopyWith<Room> get copyWith => _$RoomCopyWithImpl<Room>(this as Room, _$identity);

  /// Serializes this Room to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Room&&(identical(other.id, id) || other.id == id)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.pricePerMonth, pricePerMonth) || other.pricePerMonth == pricePerMonth)&&(identical(other.roomSize, roomSize) || other.roomSize == roomSize)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.statusId, statusId) || other.statusId == statusId)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other.facilities, facilities)&&const DeepCollectionEquality().equals(other.images, images)&&const DeepCollectionEquality().equals(other.generalFacilities, generalFacilities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roomNumber,title,description,pricePerMonth,roomSize,floor,capacity,statusId,statusName,thumbnail,const DeepCollectionEquality().hash(facilities),const DeepCollectionEquality().hash(images),const DeepCollectionEquality().hash(generalFacilities));

@override
String toString() {
  return 'Room(id: $id, roomNumber: $roomNumber, title: $title, description: $description, pricePerMonth: $pricePerMonth, roomSize: $roomSize, floor: $floor, capacity: $capacity, statusId: $statusId, statusName: $statusName, thumbnail: $thumbnail, facilities: $facilities, images: $images, generalFacilities: $generalFacilities)';
}


}

/// @nodoc
abstract mixin class $RoomCopyWith<$Res>  {
  factory $RoomCopyWith(Room value, $Res Function(Room) _then) = _$RoomCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'room_number') String roomNumber, String title, String description,@JsonKey(name: 'price_per_month') int pricePerMonth,@JsonKey(name: 'room_size') String roomSize, int floor, int capacity,@JsonKey(name: 'status_id') int statusId,@JsonKey(name: 'status_name') String statusName, String thumbnail, List<Facility> facilities, List<RoomImage> images,@JsonKey(name: 'general_facilities') List<dynamic>? generalFacilities
});




}
/// @nodoc
class _$RoomCopyWithImpl<$Res>
    implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._self, this._then);

  final Room _self;
  final $Res Function(Room) _then;

/// Create a copy of Room
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? roomNumber = null,Object? title = null,Object? description = null,Object? pricePerMonth = null,Object? roomSize = null,Object? floor = null,Object? capacity = null,Object? statusId = null,Object? statusName = null,Object? thumbnail = null,Object? facilities = null,Object? images = null,Object? generalFacilities = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,pricePerMonth: null == pricePerMonth ? _self.pricePerMonth : pricePerMonth // ignore: cast_nullable_to_non_nullable
as int,roomSize: null == roomSize ? _self.roomSize : roomSize // ignore: cast_nullable_to_non_nullable
as String,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,statusId: null == statusId ? _self.statusId : statusId // ignore: cast_nullable_to_non_nullable
as int,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,facilities: null == facilities ? _self.facilities : facilities // ignore: cast_nullable_to_non_nullable
as List<Facility>,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<RoomImage>,generalFacilities: freezed == generalFacilities ? _self.generalFacilities : generalFacilities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Room].
extension RoomPatterns on Room {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Room value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Room() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Room value)  $default,){
final _that = this;
switch (_that) {
case _Room():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Room value)?  $default,){
final _that = this;
switch (_that) {
case _Room() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'room_number')  String roomNumber,  String title,  String description, @JsonKey(name: 'price_per_month')  int pricePerMonth, @JsonKey(name: 'room_size')  String roomSize,  int floor,  int capacity, @JsonKey(name: 'status_id')  int statusId, @JsonKey(name: 'status_name')  String statusName,  String thumbnail,  List<Facility> facilities,  List<RoomImage> images, @JsonKey(name: 'general_facilities')  List<dynamic>? generalFacilities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Room() when $default != null:
return $default(_that.id,_that.roomNumber,_that.title,_that.description,_that.pricePerMonth,_that.roomSize,_that.floor,_that.capacity,_that.statusId,_that.statusName,_that.thumbnail,_that.facilities,_that.images,_that.generalFacilities);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'room_number')  String roomNumber,  String title,  String description, @JsonKey(name: 'price_per_month')  int pricePerMonth, @JsonKey(name: 'room_size')  String roomSize,  int floor,  int capacity, @JsonKey(name: 'status_id')  int statusId, @JsonKey(name: 'status_name')  String statusName,  String thumbnail,  List<Facility> facilities,  List<RoomImage> images, @JsonKey(name: 'general_facilities')  List<dynamic>? generalFacilities)  $default,) {final _that = this;
switch (_that) {
case _Room():
return $default(_that.id,_that.roomNumber,_that.title,_that.description,_that.pricePerMonth,_that.roomSize,_that.floor,_that.capacity,_that.statusId,_that.statusName,_that.thumbnail,_that.facilities,_that.images,_that.generalFacilities);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'room_number')  String roomNumber,  String title,  String description, @JsonKey(name: 'price_per_month')  int pricePerMonth, @JsonKey(name: 'room_size')  String roomSize,  int floor,  int capacity, @JsonKey(name: 'status_id')  int statusId, @JsonKey(name: 'status_name')  String statusName,  String thumbnail,  List<Facility> facilities,  List<RoomImage> images, @JsonKey(name: 'general_facilities')  List<dynamic>? generalFacilities)?  $default,) {final _that = this;
switch (_that) {
case _Room() when $default != null:
return $default(_that.id,_that.roomNumber,_that.title,_that.description,_that.pricePerMonth,_that.roomSize,_that.floor,_that.capacity,_that.statusId,_that.statusName,_that.thumbnail,_that.facilities,_that.images,_that.generalFacilities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Room implements Room {
  const _Room({required this.id, @JsonKey(name: 'room_number') required this.roomNumber, required this.title, required this.description, @JsonKey(name: 'price_per_month') required this.pricePerMonth, @JsonKey(name: 'room_size') required this.roomSize, required this.floor, required this.capacity, @JsonKey(name: 'status_id') required this.statusId, @JsonKey(name: 'status_name') required this.statusName, required this.thumbnail, required final  List<Facility> facilities, required final  List<RoomImage> images, @JsonKey(name: 'general_facilities') final  List<dynamic>? generalFacilities}): _facilities = facilities,_images = images,_generalFacilities = generalFacilities;
  factory _Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);

@override final  int id;
@override@JsonKey(name: 'room_number') final  String roomNumber;
@override final  String title;
@override final  String description;
@override@JsonKey(name: 'price_per_month') final  int pricePerMonth;
@override@JsonKey(name: 'room_size') final  String roomSize;
@override final  int floor;
@override final  int capacity;
@override@JsonKey(name: 'status_id') final  int statusId;
@override@JsonKey(name: 'status_name') final  String statusName;
@override final  String thumbnail;
 final  List<Facility> _facilities;
@override List<Facility> get facilities {
  if (_facilities is EqualUnmodifiableListView) return _facilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_facilities);
}

 final  List<RoomImage> _images;
@override List<RoomImage> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  List<dynamic>? _generalFacilities;
@override@JsonKey(name: 'general_facilities') List<dynamic>? get generalFacilities {
  final value = _generalFacilities;
  if (value == null) return null;
  if (_generalFacilities is EqualUnmodifiableListView) return _generalFacilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Room
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomCopyWith<_Room> get copyWith => __$RoomCopyWithImpl<_Room>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoomToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Room&&(identical(other.id, id) || other.id == id)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.pricePerMonth, pricePerMonth) || other.pricePerMonth == pricePerMonth)&&(identical(other.roomSize, roomSize) || other.roomSize == roomSize)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.statusId, statusId) || other.statusId == statusId)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other._facilities, _facilities)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._generalFacilities, _generalFacilities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roomNumber,title,description,pricePerMonth,roomSize,floor,capacity,statusId,statusName,thumbnail,const DeepCollectionEquality().hash(_facilities),const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_generalFacilities));

@override
String toString() {
  return 'Room(id: $id, roomNumber: $roomNumber, title: $title, description: $description, pricePerMonth: $pricePerMonth, roomSize: $roomSize, floor: $floor, capacity: $capacity, statusId: $statusId, statusName: $statusName, thumbnail: $thumbnail, facilities: $facilities, images: $images, generalFacilities: $generalFacilities)';
}


}

/// @nodoc
abstract mixin class _$RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$RoomCopyWith(_Room value, $Res Function(_Room) _then) = __$RoomCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'room_number') String roomNumber, String title, String description,@JsonKey(name: 'price_per_month') int pricePerMonth,@JsonKey(name: 'room_size') String roomSize, int floor, int capacity,@JsonKey(name: 'status_id') int statusId,@JsonKey(name: 'status_name') String statusName, String thumbnail, List<Facility> facilities, List<RoomImage> images,@JsonKey(name: 'general_facilities') List<dynamic>? generalFacilities
});




}
/// @nodoc
class __$RoomCopyWithImpl<$Res>
    implements _$RoomCopyWith<$Res> {
  __$RoomCopyWithImpl(this._self, this._then);

  final _Room _self;
  final $Res Function(_Room) _then;

/// Create a copy of Room
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? roomNumber = null,Object? title = null,Object? description = null,Object? pricePerMonth = null,Object? roomSize = null,Object? floor = null,Object? capacity = null,Object? statusId = null,Object? statusName = null,Object? thumbnail = null,Object? facilities = null,Object? images = null,Object? generalFacilities = freezed,}) {
  return _then(_Room(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,pricePerMonth: null == pricePerMonth ? _self.pricePerMonth : pricePerMonth // ignore: cast_nullable_to_non_nullable
as int,roomSize: null == roomSize ? _self.roomSize : roomSize // ignore: cast_nullable_to_non_nullable
as String,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,statusId: null == statusId ? _self.statusId : statusId // ignore: cast_nullable_to_non_nullable
as int,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,facilities: null == facilities ? _self._facilities : facilities // ignore: cast_nullable_to_non_nullable
as List<Facility>,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<RoomImage>,generalFacilities: freezed == generalFacilities ? _self._generalFacilities : generalFacilities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}


}

// dart format on
