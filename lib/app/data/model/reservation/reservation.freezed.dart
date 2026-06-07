// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReservationResponse {

 bool get success; String get message; Reservation? get reservation;
/// Create a copy of ReservationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReservationResponseCopyWith<ReservationResponse> get copyWith => _$ReservationResponseCopyWithImpl<ReservationResponse>(this as ReservationResponse, _$identity);

  /// Serializes this ReservationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReservationResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.reservation, reservation) || other.reservation == reservation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,reservation);

@override
String toString() {
  return 'ReservationResponse(success: $success, message: $message, reservation: $reservation)';
}


}

/// @nodoc
abstract mixin class $ReservationResponseCopyWith<$Res>  {
  factory $ReservationResponseCopyWith(ReservationResponse value, $Res Function(ReservationResponse) _then) = _$ReservationResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, Reservation? reservation
});


$ReservationCopyWith<$Res>? get reservation;

}
/// @nodoc
class _$ReservationResponseCopyWithImpl<$Res>
    implements $ReservationResponseCopyWith<$Res> {
  _$ReservationResponseCopyWithImpl(this._self, this._then);

  final ReservationResponse _self;
  final $Res Function(ReservationResponse) _then;

/// Create a copy of ReservationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? reservation = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,reservation: freezed == reservation ? _self.reservation : reservation // ignore: cast_nullable_to_non_nullable
as Reservation?,
  ));
}
/// Create a copy of ReservationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReservationCopyWith<$Res>? get reservation {
    if (_self.reservation == null) {
    return null;
  }

  return $ReservationCopyWith<$Res>(_self.reservation!, (value) {
    return _then(_self.copyWith(reservation: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReservationResponse].
extension ReservationResponsePatterns on ReservationResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReservationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReservationResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReservationResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReservationResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReservationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReservationResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  Reservation? reservation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReservationResponse() when $default != null:
return $default(_that.success,_that.message,_that.reservation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  Reservation? reservation)  $default,) {final _that = this;
switch (_that) {
case _ReservationResponse():
return $default(_that.success,_that.message,_that.reservation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  Reservation? reservation)?  $default,) {final _that = this;
switch (_that) {
case _ReservationResponse() when $default != null:
return $default(_that.success,_that.message,_that.reservation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReservationResponse implements ReservationResponse {
  const _ReservationResponse({required this.success, required this.message, this.reservation});
  factory _ReservationResponse.fromJson(Map<String, dynamic> json) => _$ReservationResponseFromJson(json);

@override final  bool success;
@override final  String message;
@override final  Reservation? reservation;

/// Create a copy of ReservationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReservationResponseCopyWith<_ReservationResponse> get copyWith => __$ReservationResponseCopyWithImpl<_ReservationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReservationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReservationResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.reservation, reservation) || other.reservation == reservation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,reservation);

@override
String toString() {
  return 'ReservationResponse(success: $success, message: $message, reservation: $reservation)';
}


}

/// @nodoc
abstract mixin class _$ReservationResponseCopyWith<$Res> implements $ReservationResponseCopyWith<$Res> {
  factory _$ReservationResponseCopyWith(_ReservationResponse value, $Res Function(_ReservationResponse) _then) = __$ReservationResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, Reservation? reservation
});


@override $ReservationCopyWith<$Res>? get reservation;

}
/// @nodoc
class __$ReservationResponseCopyWithImpl<$Res>
    implements _$ReservationResponseCopyWith<$Res> {
  __$ReservationResponseCopyWithImpl(this._self, this._then);

  final _ReservationResponse _self;
  final $Res Function(_ReservationResponse) _then;

/// Create a copy of ReservationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? reservation = freezed,}) {
  return _then(_ReservationResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,reservation: freezed == reservation ? _self.reservation : reservation // ignore: cast_nullable_to_non_nullable
as Reservation?,
  ));
}

/// Create a copy of ReservationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReservationCopyWith<$Res>? get reservation {
    if (_self.reservation == null) {
    return null;
  }

  return $ReservationCopyWith<$Res>(_self.reservation!, (value) {
    return _then(_self.copyWith(reservation: value));
  });
}
}


/// @nodoc
mixin _$Reservation {

 int get id;@JsonKey(name: 'reservation_code') String get reservationCode;@JsonKey(name: 'room_id') int get roomId;@JsonKey(name: 'start_date') String get startDate;@JsonKey(name: 'duration_month') int get durationMonth;@JsonKey(name: 'room_price') double get roomPrice;@JsonKey(name: 'admin_fee') int get adminFee; int get deposit;@JsonKey(name: 'total_price') int get totalPrice;@JsonKey(name: 'status_label') String get statusLabel;
/// Create a copy of Reservation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReservationCopyWith<Reservation> get copyWith => _$ReservationCopyWithImpl<Reservation>(this as Reservation, _$identity);

  /// Serializes this Reservation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reservation&&(identical(other.id, id) || other.id == id)&&(identical(other.reservationCode, reservationCode) || other.reservationCode == reservationCode)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.durationMonth, durationMonth) || other.durationMonth == durationMonth)&&(identical(other.roomPrice, roomPrice) || other.roomPrice == roomPrice)&&(identical(other.adminFee, adminFee) || other.adminFee == adminFee)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reservationCode,roomId,startDate,durationMonth,roomPrice,adminFee,deposit,totalPrice,statusLabel);

@override
String toString() {
  return 'Reservation(id: $id, reservationCode: $reservationCode, roomId: $roomId, startDate: $startDate, durationMonth: $durationMonth, roomPrice: $roomPrice, adminFee: $adminFee, deposit: $deposit, totalPrice: $totalPrice, statusLabel: $statusLabel)';
}


}

/// @nodoc
abstract mixin class $ReservationCopyWith<$Res>  {
  factory $ReservationCopyWith(Reservation value, $Res Function(Reservation) _then) = _$ReservationCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'reservation_code') String reservationCode,@JsonKey(name: 'room_id') int roomId,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'duration_month') int durationMonth,@JsonKey(name: 'room_price') double roomPrice,@JsonKey(name: 'admin_fee') int adminFee, int deposit,@JsonKey(name: 'total_price') int totalPrice,@JsonKey(name: 'status_label') String statusLabel
});




}
/// @nodoc
class _$ReservationCopyWithImpl<$Res>
    implements $ReservationCopyWith<$Res> {
  _$ReservationCopyWithImpl(this._self, this._then);

  final Reservation _self;
  final $Res Function(Reservation) _then;

/// Create a copy of Reservation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? reservationCode = null,Object? roomId = null,Object? startDate = null,Object? durationMonth = null,Object? roomPrice = null,Object? adminFee = null,Object? deposit = null,Object? totalPrice = null,Object? statusLabel = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reservationCode: null == reservationCode ? _self.reservationCode : reservationCode // ignore: cast_nullable_to_non_nullable
as String,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,durationMonth: null == durationMonth ? _self.durationMonth : durationMonth // ignore: cast_nullable_to_non_nullable
as int,roomPrice: null == roomPrice ? _self.roomPrice : roomPrice // ignore: cast_nullable_to_non_nullable
as double,adminFee: null == adminFee ? _self.adminFee : adminFee // ignore: cast_nullable_to_non_nullable
as int,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Reservation].
extension ReservationPatterns on Reservation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Reservation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Reservation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Reservation value)  $default,){
final _that = this;
switch (_that) {
case _Reservation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Reservation value)?  $default,){
final _that = this;
switch (_that) {
case _Reservation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'reservation_code')  String reservationCode, @JsonKey(name: 'room_id')  int roomId, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'duration_month')  int durationMonth, @JsonKey(name: 'room_price')  double roomPrice, @JsonKey(name: 'admin_fee')  int adminFee,  int deposit, @JsonKey(name: 'total_price')  int totalPrice, @JsonKey(name: 'status_label')  String statusLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Reservation() when $default != null:
return $default(_that.id,_that.reservationCode,_that.roomId,_that.startDate,_that.durationMonth,_that.roomPrice,_that.adminFee,_that.deposit,_that.totalPrice,_that.statusLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'reservation_code')  String reservationCode, @JsonKey(name: 'room_id')  int roomId, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'duration_month')  int durationMonth, @JsonKey(name: 'room_price')  double roomPrice, @JsonKey(name: 'admin_fee')  int adminFee,  int deposit, @JsonKey(name: 'total_price')  int totalPrice, @JsonKey(name: 'status_label')  String statusLabel)  $default,) {final _that = this;
switch (_that) {
case _Reservation():
return $default(_that.id,_that.reservationCode,_that.roomId,_that.startDate,_that.durationMonth,_that.roomPrice,_that.adminFee,_that.deposit,_that.totalPrice,_that.statusLabel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'reservation_code')  String reservationCode, @JsonKey(name: 'room_id')  int roomId, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'duration_month')  int durationMonth, @JsonKey(name: 'room_price')  double roomPrice, @JsonKey(name: 'admin_fee')  int adminFee,  int deposit, @JsonKey(name: 'total_price')  int totalPrice, @JsonKey(name: 'status_label')  String statusLabel)?  $default,) {final _that = this;
switch (_that) {
case _Reservation() when $default != null:
return $default(_that.id,_that.reservationCode,_that.roomId,_that.startDate,_that.durationMonth,_that.roomPrice,_that.adminFee,_that.deposit,_that.totalPrice,_that.statusLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Reservation implements Reservation {
  const _Reservation({required this.id, @JsonKey(name: 'reservation_code') required this.reservationCode, @JsonKey(name: 'room_id') required this.roomId, @JsonKey(name: 'start_date') required this.startDate, @JsonKey(name: 'duration_month') required this.durationMonth, @JsonKey(name: 'room_price') required this.roomPrice, @JsonKey(name: 'admin_fee') required this.adminFee, required this.deposit, @JsonKey(name: 'total_price') required this.totalPrice, @JsonKey(name: 'status_label') required this.statusLabel});
  factory _Reservation.fromJson(Map<String, dynamic> json) => _$ReservationFromJson(json);

@override final  int id;
@override@JsonKey(name: 'reservation_code') final  String reservationCode;
@override@JsonKey(name: 'room_id') final  int roomId;
@override@JsonKey(name: 'start_date') final  String startDate;
@override@JsonKey(name: 'duration_month') final  int durationMonth;
@override@JsonKey(name: 'room_price') final  double roomPrice;
@override@JsonKey(name: 'admin_fee') final  int adminFee;
@override final  int deposit;
@override@JsonKey(name: 'total_price') final  int totalPrice;
@override@JsonKey(name: 'status_label') final  String statusLabel;

/// Create a copy of Reservation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReservationCopyWith<_Reservation> get copyWith => __$ReservationCopyWithImpl<_Reservation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReservationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reservation&&(identical(other.id, id) || other.id == id)&&(identical(other.reservationCode, reservationCode) || other.reservationCode == reservationCode)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.durationMonth, durationMonth) || other.durationMonth == durationMonth)&&(identical(other.roomPrice, roomPrice) || other.roomPrice == roomPrice)&&(identical(other.adminFee, adminFee) || other.adminFee == adminFee)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reservationCode,roomId,startDate,durationMonth,roomPrice,adminFee,deposit,totalPrice,statusLabel);

@override
String toString() {
  return 'Reservation(id: $id, reservationCode: $reservationCode, roomId: $roomId, startDate: $startDate, durationMonth: $durationMonth, roomPrice: $roomPrice, adminFee: $adminFee, deposit: $deposit, totalPrice: $totalPrice, statusLabel: $statusLabel)';
}


}

/// @nodoc
abstract mixin class _$ReservationCopyWith<$Res> implements $ReservationCopyWith<$Res> {
  factory _$ReservationCopyWith(_Reservation value, $Res Function(_Reservation) _then) = __$ReservationCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'reservation_code') String reservationCode,@JsonKey(name: 'room_id') int roomId,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'duration_month') int durationMonth,@JsonKey(name: 'room_price') double roomPrice,@JsonKey(name: 'admin_fee') int adminFee, int deposit,@JsonKey(name: 'total_price') int totalPrice,@JsonKey(name: 'status_label') String statusLabel
});




}
/// @nodoc
class __$ReservationCopyWithImpl<$Res>
    implements _$ReservationCopyWith<$Res> {
  __$ReservationCopyWithImpl(this._self, this._then);

  final _Reservation _self;
  final $Res Function(_Reservation) _then;

/// Create a copy of Reservation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reservationCode = null,Object? roomId = null,Object? startDate = null,Object? durationMonth = null,Object? roomPrice = null,Object? adminFee = null,Object? deposit = null,Object? totalPrice = null,Object? statusLabel = null,}) {
  return _then(_Reservation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reservationCode: null == reservationCode ? _self.reservationCode : reservationCode // ignore: cast_nullable_to_non_nullable
as String,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,durationMonth: null == durationMonth ? _self.durationMonth : durationMonth // ignore: cast_nullable_to_non_nullable
as int,roomPrice: null == roomPrice ? _self.roomPrice : roomPrice // ignore: cast_nullable_to_non_nullable
as double,adminFee: null == adminFee ? _self.adminFee : adminFee // ignore: cast_nullable_to_non_nullable
as int,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
