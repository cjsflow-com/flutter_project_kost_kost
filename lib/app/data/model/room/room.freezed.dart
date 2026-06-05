// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoomResponse {

 bool get success; String get message; RoomData get data;
/// Create a copy of RoomResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomResponseCopyWith<RoomResponse> get copyWith => _$RoomResponseCopyWithImpl<RoomResponse>(this as RoomResponse, _$identity);

  /// Serializes this RoomResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'RoomResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $RoomResponseCopyWith<$Res>  {
  factory $RoomResponseCopyWith(RoomResponse value, $Res Function(RoomResponse) _then) = _$RoomResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, RoomData data
});


$RoomDataCopyWith<$Res> get data;

}
/// @nodoc
class _$RoomResponseCopyWithImpl<$Res>
    implements $RoomResponseCopyWith<$Res> {
  _$RoomResponseCopyWithImpl(this._self, this._then);

  final RoomResponse _self;
  final $Res Function(RoomResponse) _then;

/// Create a copy of RoomResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RoomData,
  ));
}
/// Create a copy of RoomResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomDataCopyWith<$Res> get data {
  
  return $RoomDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [RoomResponse].
extension RoomResponsePatterns on RoomResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomResponse value)  $default,){
final _that = this;
switch (_that) {
case _RoomResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RoomResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  RoomData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  RoomData data)  $default,) {final _that = this;
switch (_that) {
case _RoomResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  RoomData data)?  $default,) {final _that = this;
switch (_that) {
case _RoomResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoomResponse implements RoomResponse {
  const _RoomResponse({required this.success, required this.message, required this.data});
  factory _RoomResponse.fromJson(Map<String, dynamic> json) => _$RoomResponseFromJson(json);

@override final  bool success;
@override final  String message;
@override final  RoomData data;

/// Create a copy of RoomResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomResponseCopyWith<_RoomResponse> get copyWith => __$RoomResponseCopyWithImpl<_RoomResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoomResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'RoomResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$RoomResponseCopyWith<$Res> implements $RoomResponseCopyWith<$Res> {
  factory _$RoomResponseCopyWith(_RoomResponse value, $Res Function(_RoomResponse) _then) = __$RoomResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, RoomData data
});


@override $RoomDataCopyWith<$Res> get data;

}
/// @nodoc
class __$RoomResponseCopyWithImpl<$Res>
    implements _$RoomResponseCopyWith<$Res> {
  __$RoomResponseCopyWithImpl(this._self, this._then);

  final _RoomResponse _self;
  final $Res Function(_RoomResponse) _then;

/// Create a copy of RoomResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,}) {
  return _then(_RoomResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RoomData,
  ));
}

/// Create a copy of RoomResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomDataCopyWith<$Res> get data {
  
  return $RoomDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$RoomData {

 List<Room> get rooms; Pagination get pagination;
/// Create a copy of RoomData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomDataCopyWith<RoomData> get copyWith => _$RoomDataCopyWithImpl<RoomData>(this as RoomData, _$identity);

  /// Serializes this RoomData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomData&&const DeepCollectionEquality().equals(other.rooms, rooms)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(rooms),pagination);

@override
String toString() {
  return 'RoomData(rooms: $rooms, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $RoomDataCopyWith<$Res>  {
  factory $RoomDataCopyWith(RoomData value, $Res Function(RoomData) _then) = _$RoomDataCopyWithImpl;
@useResult
$Res call({
 List<Room> rooms, Pagination pagination
});


$PaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class _$RoomDataCopyWithImpl<$Res>
    implements $RoomDataCopyWith<$Res> {
  _$RoomDataCopyWithImpl(this._self, this._then);

  final RoomData _self;
  final $Res Function(RoomData) _then;

/// Create a copy of RoomData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rooms = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
rooms: null == rooms ? _self.rooms : rooms // ignore: cast_nullable_to_non_nullable
as List<Room>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}
/// Create a copy of RoomData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [RoomData].
extension RoomDataPatterns on RoomData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomData value)  $default,){
final _that = this;
switch (_that) {
case _RoomData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomData value)?  $default,){
final _that = this;
switch (_that) {
case _RoomData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Room> rooms,  Pagination pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomData() when $default != null:
return $default(_that.rooms,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Room> rooms,  Pagination pagination)  $default,) {final _that = this;
switch (_that) {
case _RoomData():
return $default(_that.rooms,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Room> rooms,  Pagination pagination)?  $default,) {final _that = this;
switch (_that) {
case _RoomData() when $default != null:
return $default(_that.rooms,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoomData implements RoomData {
  const _RoomData({required final  List<Room> rooms, required this.pagination}): _rooms = rooms;
  factory _RoomData.fromJson(Map<String, dynamic> json) => _$RoomDataFromJson(json);

 final  List<Room> _rooms;
@override List<Room> get rooms {
  if (_rooms is EqualUnmodifiableListView) return _rooms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rooms);
}

@override final  Pagination pagination;

/// Create a copy of RoomData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomDataCopyWith<_RoomData> get copyWith => __$RoomDataCopyWithImpl<_RoomData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoomDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomData&&const DeepCollectionEquality().equals(other._rooms, _rooms)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rooms),pagination);

@override
String toString() {
  return 'RoomData(rooms: $rooms, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$RoomDataCopyWith<$Res> implements $RoomDataCopyWith<$Res> {
  factory _$RoomDataCopyWith(_RoomData value, $Res Function(_RoomData) _then) = __$RoomDataCopyWithImpl;
@override @useResult
$Res call({
 List<Room> rooms, Pagination pagination
});


@override $PaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class __$RoomDataCopyWithImpl<$Res>
    implements _$RoomDataCopyWith<$Res> {
  __$RoomDataCopyWithImpl(this._self, this._then);

  final _RoomData _self;
  final $Res Function(_RoomData) _then;

/// Create a copy of RoomData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rooms = null,Object? pagination = null,}) {
  return _then(_RoomData(
rooms: null == rooms ? _self._rooms : rooms // ignore: cast_nullable_to_non_nullable
as List<Room>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}

/// Create a copy of RoomData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$Pagination {

@JsonKey(name: 'current_page') int get currentPage;@JsonKey(name: 'last_page') int get lastPage;@JsonKey(name: 'per_page') int get perPage; int get total;
/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationCopyWith<Pagination> get copyWith => _$PaginationCopyWithImpl<Pagination>(this as Pagination, _$identity);

  /// Serializes this Pagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pagination&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,lastPage,perPage,total);

@override
String toString() {
  return 'Pagination(currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
}


}

/// @nodoc
abstract mixin class $PaginationCopyWith<$Res>  {
  factory $PaginationCopyWith(Pagination value, $Res Function(Pagination) _then) = _$PaginationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int currentPage,@JsonKey(name: 'last_page') int lastPage,@JsonKey(name: 'per_page') int perPage, int total
});




}
/// @nodoc
class _$PaginationCopyWithImpl<$Res>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._self, this._then);

  final Pagination _self;
  final $Res Function(Pagination) _then;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = null,Object? lastPage = null,Object? perPage = null,Object? total = null,}) {
  return _then(_self.copyWith(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Pagination].
extension PaginationPatterns on Pagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pagination value)  $default,){
final _that = this;
switch (_that) {
case _Pagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pagination value)?  $default,){
final _that = this;
switch (_that) {
case _Pagination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int currentPage, @JsonKey(name: 'last_page')  int lastPage, @JsonKey(name: 'per_page')  int perPage,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that.currentPage,_that.lastPage,_that.perPage,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int currentPage, @JsonKey(name: 'last_page')  int lastPage, @JsonKey(name: 'per_page')  int perPage,  int total)  $default,) {final _that = this;
switch (_that) {
case _Pagination():
return $default(_that.currentPage,_that.lastPage,_that.perPage,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int currentPage, @JsonKey(name: 'last_page')  int lastPage, @JsonKey(name: 'per_page')  int perPage,  int total)?  $default,) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that.currentPage,_that.lastPage,_that.perPage,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Pagination implements Pagination {
  const _Pagination({@JsonKey(name: 'current_page') required this.currentPage, @JsonKey(name: 'last_page') required this.lastPage, @JsonKey(name: 'per_page') required this.perPage, required this.total});
  factory _Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);

@override@JsonKey(name: 'current_page') final  int currentPage;
@override@JsonKey(name: 'last_page') final  int lastPage;
@override@JsonKey(name: 'per_page') final  int perPage;
@override final  int total;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationCopyWith<_Pagination> get copyWith => __$PaginationCopyWithImpl<_Pagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pagination&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,lastPage,perPage,total);

@override
String toString() {
  return 'Pagination(currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
}


}

/// @nodoc
abstract mixin class _$PaginationCopyWith<$Res> implements $PaginationCopyWith<$Res> {
  factory _$PaginationCopyWith(_Pagination value, $Res Function(_Pagination) _then) = __$PaginationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int currentPage,@JsonKey(name: 'last_page') int lastPage,@JsonKey(name: 'per_page') int perPage, int total
});




}
/// @nodoc
class __$PaginationCopyWithImpl<$Res>
    implements _$PaginationCopyWith<$Res> {
  __$PaginationCopyWithImpl(this._self, this._then);

  final _Pagination _self;
  final $Res Function(_Pagination) _then;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = null,Object? lastPage = null,Object? perPage = null,Object? total = null,}) {
  return _then(_Pagination(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Room {

 int get id;@JsonKey(name: 'room_number') String get roomNumber; String get title; String get description;@JsonKey(name: 'price_per_month') String get pricePerMonth;@JsonKey(name: 'room_size') String get roomSize; int get floor; int get capacity;@JsonKey(name: 'status_id') int get statusId;@JsonKey(name: 'status_name') String get statusName; String get thumbnail; List<Facility> get facilities; List<RoomImage> get images;
/// Create a copy of Room
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomCopyWith<Room> get copyWith => _$RoomCopyWithImpl<Room>(this as Room, _$identity);

  /// Serializes this Room to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Room&&(identical(other.id, id) || other.id == id)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.pricePerMonth, pricePerMonth) || other.pricePerMonth == pricePerMonth)&&(identical(other.roomSize, roomSize) || other.roomSize == roomSize)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.statusId, statusId) || other.statusId == statusId)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other.facilities, facilities)&&const DeepCollectionEquality().equals(other.images, images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roomNumber,title,description,pricePerMonth,roomSize,floor,capacity,statusId,statusName,thumbnail,const DeepCollectionEquality().hash(facilities),const DeepCollectionEquality().hash(images));

@override
String toString() {
  return 'Room(id: $id, roomNumber: $roomNumber, title: $title, description: $description, pricePerMonth: $pricePerMonth, roomSize: $roomSize, floor: $floor, capacity: $capacity, statusId: $statusId, statusName: $statusName, thumbnail: $thumbnail, facilities: $facilities, images: $images)';
}


}

/// @nodoc
abstract mixin class $RoomCopyWith<$Res>  {
  factory $RoomCopyWith(Room value, $Res Function(Room) _then) = _$RoomCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'room_number') String roomNumber, String title, String description,@JsonKey(name: 'price_per_month') String pricePerMonth,@JsonKey(name: 'room_size') String roomSize, int floor, int capacity,@JsonKey(name: 'status_id') int statusId,@JsonKey(name: 'status_name') String statusName, String thumbnail, List<Facility> facilities, List<RoomImage> images
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? roomNumber = null,Object? title = null,Object? description = null,Object? pricePerMonth = null,Object? roomSize = null,Object? floor = null,Object? capacity = null,Object? statusId = null,Object? statusName = null,Object? thumbnail = null,Object? facilities = null,Object? images = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,pricePerMonth: null == pricePerMonth ? _self.pricePerMonth : pricePerMonth // ignore: cast_nullable_to_non_nullable
as String,roomSize: null == roomSize ? _self.roomSize : roomSize // ignore: cast_nullable_to_non_nullable
as String,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,statusId: null == statusId ? _self.statusId : statusId // ignore: cast_nullable_to_non_nullable
as int,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,facilities: null == facilities ? _self.facilities : facilities // ignore: cast_nullable_to_non_nullable
as List<Facility>,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<RoomImage>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'room_number')  String roomNumber,  String title,  String description, @JsonKey(name: 'price_per_month')  String pricePerMonth, @JsonKey(name: 'room_size')  String roomSize,  int floor,  int capacity, @JsonKey(name: 'status_id')  int statusId, @JsonKey(name: 'status_name')  String statusName,  String thumbnail,  List<Facility> facilities,  List<RoomImage> images)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Room() when $default != null:
return $default(_that.id,_that.roomNumber,_that.title,_that.description,_that.pricePerMonth,_that.roomSize,_that.floor,_that.capacity,_that.statusId,_that.statusName,_that.thumbnail,_that.facilities,_that.images);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'room_number')  String roomNumber,  String title,  String description, @JsonKey(name: 'price_per_month')  String pricePerMonth, @JsonKey(name: 'room_size')  String roomSize,  int floor,  int capacity, @JsonKey(name: 'status_id')  int statusId, @JsonKey(name: 'status_name')  String statusName,  String thumbnail,  List<Facility> facilities,  List<RoomImage> images)  $default,) {final _that = this;
switch (_that) {
case _Room():
return $default(_that.id,_that.roomNumber,_that.title,_that.description,_that.pricePerMonth,_that.roomSize,_that.floor,_that.capacity,_that.statusId,_that.statusName,_that.thumbnail,_that.facilities,_that.images);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'room_number')  String roomNumber,  String title,  String description, @JsonKey(name: 'price_per_month')  String pricePerMonth, @JsonKey(name: 'room_size')  String roomSize,  int floor,  int capacity, @JsonKey(name: 'status_id')  int statusId, @JsonKey(name: 'status_name')  String statusName,  String thumbnail,  List<Facility> facilities,  List<RoomImage> images)?  $default,) {final _that = this;
switch (_that) {
case _Room() when $default != null:
return $default(_that.id,_that.roomNumber,_that.title,_that.description,_that.pricePerMonth,_that.roomSize,_that.floor,_that.capacity,_that.statusId,_that.statusName,_that.thumbnail,_that.facilities,_that.images);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Room implements Room {
  const _Room({required this.id, @JsonKey(name: 'room_number') required this.roomNumber, required this.title, required this.description, @JsonKey(name: 'price_per_month') required this.pricePerMonth, @JsonKey(name: 'room_size') required this.roomSize, required this.floor, required this.capacity, @JsonKey(name: 'status_id') required this.statusId, @JsonKey(name: 'status_name') required this.statusName, required this.thumbnail, required final  List<Facility> facilities, required final  List<RoomImage> images}): _facilities = facilities,_images = images;
  factory _Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);

@override final  int id;
@override@JsonKey(name: 'room_number') final  String roomNumber;
@override final  String title;
@override final  String description;
@override@JsonKey(name: 'price_per_month') final  String pricePerMonth;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Room&&(identical(other.id, id) || other.id == id)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.pricePerMonth, pricePerMonth) || other.pricePerMonth == pricePerMonth)&&(identical(other.roomSize, roomSize) || other.roomSize == roomSize)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.statusId, statusId) || other.statusId == statusId)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&const DeepCollectionEquality().equals(other._facilities, _facilities)&&const DeepCollectionEquality().equals(other._images, _images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roomNumber,title,description,pricePerMonth,roomSize,floor,capacity,statusId,statusName,thumbnail,const DeepCollectionEquality().hash(_facilities),const DeepCollectionEquality().hash(_images));

@override
String toString() {
  return 'Room(id: $id, roomNumber: $roomNumber, title: $title, description: $description, pricePerMonth: $pricePerMonth, roomSize: $roomSize, floor: $floor, capacity: $capacity, statusId: $statusId, statusName: $statusName, thumbnail: $thumbnail, facilities: $facilities, images: $images)';
}


}

/// @nodoc
abstract mixin class _$RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$RoomCopyWith(_Room value, $Res Function(_Room) _then) = __$RoomCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'room_number') String roomNumber, String title, String description,@JsonKey(name: 'price_per_month') String pricePerMonth,@JsonKey(name: 'room_size') String roomSize, int floor, int capacity,@JsonKey(name: 'status_id') int statusId,@JsonKey(name: 'status_name') String statusName, String thumbnail, List<Facility> facilities, List<RoomImage> images
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? roomNumber = null,Object? title = null,Object? description = null,Object? pricePerMonth = null,Object? roomSize = null,Object? floor = null,Object? capacity = null,Object? statusId = null,Object? statusName = null,Object? thumbnail = null,Object? facilities = null,Object? images = null,}) {
  return _then(_Room(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,pricePerMonth: null == pricePerMonth ? _self.pricePerMonth : pricePerMonth // ignore: cast_nullable_to_non_nullable
as String,roomSize: null == roomSize ? _self.roomSize : roomSize // ignore: cast_nullable_to_non_nullable
as String,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,statusId: null == statusId ? _self.statusId : statusId // ignore: cast_nullable_to_non_nullable
as int,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,facilities: null == facilities ? _self._facilities : facilities // ignore: cast_nullable_to_non_nullable
as List<Facility>,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<RoomImage>,
  ));
}


}


/// @nodoc
mixin _$Facility {

 int get id; String get name; String get icon;
/// Create a copy of Facility
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FacilityCopyWith<Facility> get copyWith => _$FacilityCopyWithImpl<Facility>(this as Facility, _$identity);

  /// Serializes this Facility to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Facility&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon);

@override
String toString() {
  return 'Facility(id: $id, name: $name, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $FacilityCopyWith<$Res>  {
  factory $FacilityCopyWith(Facility value, $Res Function(Facility) _then) = _$FacilityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String icon
});




}
/// @nodoc
class _$FacilityCopyWithImpl<$Res>
    implements $FacilityCopyWith<$Res> {
  _$FacilityCopyWithImpl(this._self, this._then);

  final Facility _self;
  final $Res Function(Facility) _then;

/// Create a copy of Facility
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? icon = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Facility].
extension FacilityPatterns on Facility {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Facility value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Facility() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Facility value)  $default,){
final _that = this;
switch (_that) {
case _Facility():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Facility value)?  $default,){
final _that = this;
switch (_that) {
case _Facility() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Facility() when $default != null:
return $default(_that.id,_that.name,_that.icon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String icon)  $default,) {final _that = this;
switch (_that) {
case _Facility():
return $default(_that.id,_that.name,_that.icon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String icon)?  $default,) {final _that = this;
switch (_that) {
case _Facility() when $default != null:
return $default(_that.id,_that.name,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Facility implements Facility {
  const _Facility({required this.id, required this.name, required this.icon});
  factory _Facility.fromJson(Map<String, dynamic> json) => _$FacilityFromJson(json);

@override final  int id;
@override final  String name;
@override final  String icon;

/// Create a copy of Facility
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FacilityCopyWith<_Facility> get copyWith => __$FacilityCopyWithImpl<_Facility>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FacilityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Facility&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon);

@override
String toString() {
  return 'Facility(id: $id, name: $name, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$FacilityCopyWith<$Res> implements $FacilityCopyWith<$Res> {
  factory _$FacilityCopyWith(_Facility value, $Res Function(_Facility) _then) = __$FacilityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String icon
});




}
/// @nodoc
class __$FacilityCopyWithImpl<$Res>
    implements _$FacilityCopyWith<$Res> {
  __$FacilityCopyWithImpl(this._self, this._then);

  final _Facility _self;
  final $Res Function(_Facility) _then;

/// Create a copy of Facility
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? icon = null,}) {
  return _then(_Facility(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RoomImage {

 int get id;@JsonKey(name: 'room_id') int get roomId; String get image;
/// Create a copy of RoomImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomImageCopyWith<RoomImage> get copyWith => _$RoomImageCopyWithImpl<RoomImage>(this as RoomImage, _$identity);

  /// Serializes this RoomImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomImage&&(identical(other.id, id) || other.id == id)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roomId,image);

@override
String toString() {
  return 'RoomImage(id: $id, roomId: $roomId, image: $image)';
}


}

/// @nodoc
abstract mixin class $RoomImageCopyWith<$Res>  {
  factory $RoomImageCopyWith(RoomImage value, $Res Function(RoomImage) _then) = _$RoomImageCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'room_id') int roomId, String image
});




}
/// @nodoc
class _$RoomImageCopyWithImpl<$Res>
    implements $RoomImageCopyWith<$Res> {
  _$RoomImageCopyWithImpl(this._self, this._then);

  final RoomImage _self;
  final $Res Function(RoomImage) _then;

/// Create a copy of RoomImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? roomId = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomImage].
extension RoomImagePatterns on RoomImage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomImage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomImage value)  $default,){
final _that = this;
switch (_that) {
case _RoomImage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomImage value)?  $default,){
final _that = this;
switch (_that) {
case _RoomImage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'room_id')  int roomId,  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomImage() when $default != null:
return $default(_that.id,_that.roomId,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'room_id')  int roomId,  String image)  $default,) {final _that = this;
switch (_that) {
case _RoomImage():
return $default(_that.id,_that.roomId,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'room_id')  int roomId,  String image)?  $default,) {final _that = this;
switch (_that) {
case _RoomImage() when $default != null:
return $default(_that.id,_that.roomId,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoomImage implements RoomImage {
  const _RoomImage({required this.id, @JsonKey(name: 'room_id') required this.roomId, required this.image});
  factory _RoomImage.fromJson(Map<String, dynamic> json) => _$RoomImageFromJson(json);

@override final  int id;
@override@JsonKey(name: 'room_id') final  int roomId;
@override final  String image;

/// Create a copy of RoomImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomImageCopyWith<_RoomImage> get copyWith => __$RoomImageCopyWithImpl<_RoomImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoomImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomImage&&(identical(other.id, id) || other.id == id)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roomId,image);

@override
String toString() {
  return 'RoomImage(id: $id, roomId: $roomId, image: $image)';
}


}

/// @nodoc
abstract mixin class _$RoomImageCopyWith<$Res> implements $RoomImageCopyWith<$Res> {
  factory _$RoomImageCopyWith(_RoomImage value, $Res Function(_RoomImage) _then) = __$RoomImageCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'room_id') int roomId, String image
});




}
/// @nodoc
class __$RoomImageCopyWithImpl<$Res>
    implements _$RoomImageCopyWith<$Res> {
  __$RoomImageCopyWithImpl(this._self, this._then);

  final _RoomImage _self;
  final $Res Function(_RoomImage) _then;

/// Create a copy of RoomImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? roomId = null,Object? image = null,}) {
  return _then(_RoomImage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
