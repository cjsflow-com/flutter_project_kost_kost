// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StatusHistoryResponse {

 bool get success; String get message; List<StatusHistory> get data;
/// Create a copy of StatusHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusHistoryResponseCopyWith<StatusHistoryResponse> get copyWith => _$StatusHistoryResponseCopyWithImpl<StatusHistoryResponse>(this as StatusHistoryResponse, _$identity);

  /// Serializes this StatusHistoryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusHistoryResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'StatusHistoryResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $StatusHistoryResponseCopyWith<$Res>  {
  factory $StatusHistoryResponseCopyWith(StatusHistoryResponse value, $Res Function(StatusHistoryResponse) _then) = _$StatusHistoryResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, List<StatusHistory> data
});




}
/// @nodoc
class _$StatusHistoryResponseCopyWithImpl<$Res>
    implements $StatusHistoryResponseCopyWith<$Res> {
  _$StatusHistoryResponseCopyWithImpl(this._self, this._then);

  final StatusHistoryResponse _self;
  final $Res Function(StatusHistoryResponse) _then;

/// Create a copy of StatusHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<StatusHistory>,
  ));
}

}


/// Adds pattern-matching-related methods to [StatusHistoryResponse].
extension StatusHistoryResponsePatterns on StatusHistoryResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatusHistoryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatusHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatusHistoryResponse value)  $default,){
final _that = this;
switch (_that) {
case _StatusHistoryResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatusHistoryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _StatusHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  List<StatusHistory> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatusHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  List<StatusHistory> data)  $default,) {final _that = this;
switch (_that) {
case _StatusHistoryResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  List<StatusHistory> data)?  $default,) {final _that = this;
switch (_that) {
case _StatusHistoryResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatusHistoryResponse implements StatusHistoryResponse {
  const _StatusHistoryResponse({required this.success, required this.message, required final  List<StatusHistory> data}): _data = data;
  factory _StatusHistoryResponse.fromJson(Map<String, dynamic> json) => _$StatusHistoryResponseFromJson(json);

@override final  bool success;
@override final  String message;
 final  List<StatusHistory> _data;
@override List<StatusHistory> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of StatusHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusHistoryResponseCopyWith<_StatusHistoryResponse> get copyWith => __$StatusHistoryResponseCopyWithImpl<_StatusHistoryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatusHistoryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatusHistoryResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'StatusHistoryResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$StatusHistoryResponseCopyWith<$Res> implements $StatusHistoryResponseCopyWith<$Res> {
  factory _$StatusHistoryResponseCopyWith(_StatusHistoryResponse value, $Res Function(_StatusHistoryResponse) _then) = __$StatusHistoryResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, List<StatusHistory> data
});




}
/// @nodoc
class __$StatusHistoryResponseCopyWithImpl<$Res>
    implements _$StatusHistoryResponseCopyWith<$Res> {
  __$StatusHistoryResponseCopyWithImpl(this._self, this._then);

  final _StatusHistoryResponse _self;
  final $Res Function(_StatusHistoryResponse) _then;

/// Create a copy of StatusHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,}) {
  return _then(_StatusHistoryResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<StatusHistory>,
  ));
}


}


/// @nodoc
mixin _$StatusHistory {

 int get id;@JsonKey(name: 'reservation_id') int get reservationId; String get status; String get title; String get description;
/// Create a copy of StatusHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusHistoryCopyWith<StatusHistory> get copyWith => _$StatusHistoryCopyWithImpl<StatusHistory>(this as StatusHistory, _$identity);

  /// Serializes this StatusHistory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.reservationId, reservationId) || other.reservationId == reservationId)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reservationId,status,title,description);

@override
String toString() {
  return 'StatusHistory(id: $id, reservationId: $reservationId, status: $status, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $StatusHistoryCopyWith<$Res>  {
  factory $StatusHistoryCopyWith(StatusHistory value, $Res Function(StatusHistory) _then) = _$StatusHistoryCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'reservation_id') int reservationId, String status, String title, String description
});




}
/// @nodoc
class _$StatusHistoryCopyWithImpl<$Res>
    implements $StatusHistoryCopyWith<$Res> {
  _$StatusHistoryCopyWithImpl(this._self, this._then);

  final StatusHistory _self;
  final $Res Function(StatusHistory) _then;

/// Create a copy of StatusHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? reservationId = null,Object? status = null,Object? title = null,Object? description = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reservationId: null == reservationId ? _self.reservationId : reservationId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StatusHistory].
extension StatusHistoryPatterns on StatusHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatusHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatusHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatusHistory value)  $default,){
final _that = this;
switch (_that) {
case _StatusHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatusHistory value)?  $default,){
final _that = this;
switch (_that) {
case _StatusHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'reservation_id')  int reservationId,  String status,  String title,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatusHistory() when $default != null:
return $default(_that.id,_that.reservationId,_that.status,_that.title,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'reservation_id')  int reservationId,  String status,  String title,  String description)  $default,) {final _that = this;
switch (_that) {
case _StatusHistory():
return $default(_that.id,_that.reservationId,_that.status,_that.title,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'reservation_id')  int reservationId,  String status,  String title,  String description)?  $default,) {final _that = this;
switch (_that) {
case _StatusHistory() when $default != null:
return $default(_that.id,_that.reservationId,_that.status,_that.title,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatusHistory implements StatusHistory {
  const _StatusHistory({required this.id, @JsonKey(name: 'reservation_id') required this.reservationId, required this.status, required this.title, required this.description});
  factory _StatusHistory.fromJson(Map<String, dynamic> json) => _$StatusHistoryFromJson(json);

@override final  int id;
@override@JsonKey(name: 'reservation_id') final  int reservationId;
@override final  String status;
@override final  String title;
@override final  String description;

/// Create a copy of StatusHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusHistoryCopyWith<_StatusHistory> get copyWith => __$StatusHistoryCopyWithImpl<_StatusHistory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatusHistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatusHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.reservationId, reservationId) || other.reservationId == reservationId)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reservationId,status,title,description);

@override
String toString() {
  return 'StatusHistory(id: $id, reservationId: $reservationId, status: $status, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$StatusHistoryCopyWith<$Res> implements $StatusHistoryCopyWith<$Res> {
  factory _$StatusHistoryCopyWith(_StatusHistory value, $Res Function(_StatusHistory) _then) = __$StatusHistoryCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'reservation_id') int reservationId, String status, String title, String description
});




}
/// @nodoc
class __$StatusHistoryCopyWithImpl<$Res>
    implements _$StatusHistoryCopyWith<$Res> {
  __$StatusHistoryCopyWithImpl(this._self, this._then);

  final _StatusHistory _self;
  final $Res Function(_StatusHistory) _then;

/// Create a copy of StatusHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reservationId = null,Object? status = null,Object? title = null,Object? description = null,}) {
  return _then(_StatusHistory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reservationId: null == reservationId ? _self.reservationId : reservationId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
