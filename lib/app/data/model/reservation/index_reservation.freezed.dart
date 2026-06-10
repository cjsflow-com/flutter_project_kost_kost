// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index_reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IndexReservationResponse {

 bool get success; String get message; List<IndexReservation>? get data;
/// Create a copy of IndexReservationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IndexReservationResponseCopyWith<IndexReservationResponse> get copyWith => _$IndexReservationResponseCopyWithImpl<IndexReservationResponse>(this as IndexReservationResponse, _$identity);

  /// Serializes this IndexReservationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndexReservationResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'IndexReservationResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $IndexReservationResponseCopyWith<$Res>  {
  factory $IndexReservationResponseCopyWith(IndexReservationResponse value, $Res Function(IndexReservationResponse) _then) = _$IndexReservationResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, List<IndexReservation>? data
});




}
/// @nodoc
class _$IndexReservationResponseCopyWithImpl<$Res>
    implements $IndexReservationResponseCopyWith<$Res> {
  _$IndexReservationResponseCopyWithImpl(this._self, this._then);

  final IndexReservationResponse _self;
  final $Res Function(IndexReservationResponse) _then;

/// Create a copy of IndexReservationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<IndexReservation>?,
  ));
}

}


/// Adds pattern-matching-related methods to [IndexReservationResponse].
extension IndexReservationResponsePatterns on IndexReservationResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IndexReservationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IndexReservationResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IndexReservationResponse value)  $default,){
final _that = this;
switch (_that) {
case _IndexReservationResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IndexReservationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _IndexReservationResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  List<IndexReservation>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IndexReservationResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  List<IndexReservation>? data)  $default,) {final _that = this;
switch (_that) {
case _IndexReservationResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  List<IndexReservation>? data)?  $default,) {final _that = this;
switch (_that) {
case _IndexReservationResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IndexReservationResponse implements IndexReservationResponse {
  const _IndexReservationResponse({required this.success, required this.message, final  List<IndexReservation>? data}): _data = data;
  factory _IndexReservationResponse.fromJson(Map<String, dynamic> json) => _$IndexReservationResponseFromJson(json);

@override final  bool success;
@override final  String message;
 final  List<IndexReservation>? _data;
@override List<IndexReservation>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of IndexReservationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IndexReservationResponseCopyWith<_IndexReservationResponse> get copyWith => __$IndexReservationResponseCopyWithImpl<_IndexReservationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IndexReservationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IndexReservationResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'IndexReservationResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$IndexReservationResponseCopyWith<$Res> implements $IndexReservationResponseCopyWith<$Res> {
  factory _$IndexReservationResponseCopyWith(_IndexReservationResponse value, $Res Function(_IndexReservationResponse) _then) = __$IndexReservationResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, List<IndexReservation>? data
});




}
/// @nodoc
class __$IndexReservationResponseCopyWithImpl<$Res>
    implements _$IndexReservationResponseCopyWith<$Res> {
  __$IndexReservationResponseCopyWithImpl(this._self, this._then);

  final _IndexReservationResponse _self;
  final $Res Function(_IndexReservationResponse) _then;

/// Create a copy of IndexReservationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = freezed,}) {
  return _then(_IndexReservationResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<IndexReservation>?,
  ));
}


}


/// @nodoc
mixin _$IndexReservation {

 int get id;@JsonKey(name: 'user_id') int? get userId;@JsonKey(name: 'room_id') int get roomId;@JsonKey(name: 'reservation_code') String get reservationCode;@JsonKey(name: 'customer_ktp_card') String? get customerKtpCard;@JsonKey(name: 'start_date') String get startDate;@JsonKey(name: 'duration_month') int get durationMonth;@JsonKey(name: 'room_price') int get roomPrice;@JsonKey(name: 'admin_fee') int get adminFee; int get deposit;@JsonKey(name: 'total_price') int get totalPrice; String get status;@JsonKey(name: 'payment_due_at') String? get paymentDueAt;//
// @JsonKey(name: 'approved_at')
// String? approvedAt,
//
// @JsonKey(name: 'rejected_at')
// String? rejectedAt,
//
// @JsonKey(name: 'cancelled_at')
// String? cancelledAt,
//
// @JsonKey(name: 'expired_at')
// String? expiredAt,
//
// String? note,
//
// @JsonKey(name: 'created_at')
// required String createdAt,
//
// @JsonKey(name: 'updated_at')
// required String updatedAt,
// @JsonKey(name: 'customer_id')
// required int customerId,
@JsonKey(name: 'status_label') String get statusLabel;
/// Create a copy of IndexReservation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IndexReservationCopyWith<IndexReservation> get copyWith => _$IndexReservationCopyWithImpl<IndexReservation>(this as IndexReservation, _$identity);

  /// Serializes this IndexReservation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndexReservation&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.reservationCode, reservationCode) || other.reservationCode == reservationCode)&&(identical(other.customerKtpCard, customerKtpCard) || other.customerKtpCard == customerKtpCard)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.durationMonth, durationMonth) || other.durationMonth == durationMonth)&&(identical(other.roomPrice, roomPrice) || other.roomPrice == roomPrice)&&(identical(other.adminFee, adminFee) || other.adminFee == adminFee)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentDueAt, paymentDueAt) || other.paymentDueAt == paymentDueAt)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,roomId,reservationCode,customerKtpCard,startDate,durationMonth,roomPrice,adminFee,deposit,totalPrice,status,paymentDueAt,statusLabel);

@override
String toString() {
  return 'IndexReservation(id: $id, userId: $userId, roomId: $roomId, reservationCode: $reservationCode, customerKtpCard: $customerKtpCard, startDate: $startDate, durationMonth: $durationMonth, roomPrice: $roomPrice, adminFee: $adminFee, deposit: $deposit, totalPrice: $totalPrice, status: $status, paymentDueAt: $paymentDueAt, statusLabel: $statusLabel)';
}


}

/// @nodoc
abstract mixin class $IndexReservationCopyWith<$Res>  {
  factory $IndexReservationCopyWith(IndexReservation value, $Res Function(IndexReservation) _then) = _$IndexReservationCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'room_id') int roomId,@JsonKey(name: 'reservation_code') String reservationCode,@JsonKey(name: 'customer_ktp_card') String? customerKtpCard,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'duration_month') int durationMonth,@JsonKey(name: 'room_price') int roomPrice,@JsonKey(name: 'admin_fee') int adminFee, int deposit,@JsonKey(name: 'total_price') int totalPrice, String status,@JsonKey(name: 'payment_due_at') String? paymentDueAt,@JsonKey(name: 'status_label') String statusLabel
});




}
/// @nodoc
class _$IndexReservationCopyWithImpl<$Res>
    implements $IndexReservationCopyWith<$Res> {
  _$IndexReservationCopyWithImpl(this._self, this._then);

  final IndexReservation _self;
  final $Res Function(IndexReservation) _then;

/// Create a copy of IndexReservation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? roomId = null,Object? reservationCode = null,Object? customerKtpCard = freezed,Object? startDate = null,Object? durationMonth = null,Object? roomPrice = null,Object? adminFee = null,Object? deposit = null,Object? totalPrice = null,Object? status = null,Object? paymentDueAt = freezed,Object? statusLabel = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,reservationCode: null == reservationCode ? _self.reservationCode : reservationCode // ignore: cast_nullable_to_non_nullable
as String,customerKtpCard: freezed == customerKtpCard ? _self.customerKtpCard : customerKtpCard // ignore: cast_nullable_to_non_nullable
as String?,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,durationMonth: null == durationMonth ? _self.durationMonth : durationMonth // ignore: cast_nullable_to_non_nullable
as int,roomPrice: null == roomPrice ? _self.roomPrice : roomPrice // ignore: cast_nullable_to_non_nullable
as int,adminFee: null == adminFee ? _self.adminFee : adminFee // ignore: cast_nullable_to_non_nullable
as int,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paymentDueAt: freezed == paymentDueAt ? _self.paymentDueAt : paymentDueAt // ignore: cast_nullable_to_non_nullable
as String?,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [IndexReservation].
extension IndexReservationPatterns on IndexReservation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IndexReservation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IndexReservation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IndexReservation value)  $default,){
final _that = this;
switch (_that) {
case _IndexReservation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IndexReservation value)?  $default,){
final _that = this;
switch (_that) {
case _IndexReservation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'room_id')  int roomId, @JsonKey(name: 'reservation_code')  String reservationCode, @JsonKey(name: 'customer_ktp_card')  String? customerKtpCard, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'duration_month')  int durationMonth, @JsonKey(name: 'room_price')  int roomPrice, @JsonKey(name: 'admin_fee')  int adminFee,  int deposit, @JsonKey(name: 'total_price')  int totalPrice,  String status, @JsonKey(name: 'payment_due_at')  String? paymentDueAt, @JsonKey(name: 'status_label')  String statusLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IndexReservation() when $default != null:
return $default(_that.id,_that.userId,_that.roomId,_that.reservationCode,_that.customerKtpCard,_that.startDate,_that.durationMonth,_that.roomPrice,_that.adminFee,_that.deposit,_that.totalPrice,_that.status,_that.paymentDueAt,_that.statusLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'room_id')  int roomId, @JsonKey(name: 'reservation_code')  String reservationCode, @JsonKey(name: 'customer_ktp_card')  String? customerKtpCard, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'duration_month')  int durationMonth, @JsonKey(name: 'room_price')  int roomPrice, @JsonKey(name: 'admin_fee')  int adminFee,  int deposit, @JsonKey(name: 'total_price')  int totalPrice,  String status, @JsonKey(name: 'payment_due_at')  String? paymentDueAt, @JsonKey(name: 'status_label')  String statusLabel)  $default,) {final _that = this;
switch (_that) {
case _IndexReservation():
return $default(_that.id,_that.userId,_that.roomId,_that.reservationCode,_that.customerKtpCard,_that.startDate,_that.durationMonth,_that.roomPrice,_that.adminFee,_that.deposit,_that.totalPrice,_that.status,_that.paymentDueAt,_that.statusLabel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'room_id')  int roomId, @JsonKey(name: 'reservation_code')  String reservationCode, @JsonKey(name: 'customer_ktp_card')  String? customerKtpCard, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'duration_month')  int durationMonth, @JsonKey(name: 'room_price')  int roomPrice, @JsonKey(name: 'admin_fee')  int adminFee,  int deposit, @JsonKey(name: 'total_price')  int totalPrice,  String status, @JsonKey(name: 'payment_due_at')  String? paymentDueAt, @JsonKey(name: 'status_label')  String statusLabel)?  $default,) {final _that = this;
switch (_that) {
case _IndexReservation() when $default != null:
return $default(_that.id,_that.userId,_that.roomId,_that.reservationCode,_that.customerKtpCard,_that.startDate,_that.durationMonth,_that.roomPrice,_that.adminFee,_that.deposit,_that.totalPrice,_that.status,_that.paymentDueAt,_that.statusLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IndexReservation implements IndexReservation {
  const _IndexReservation({required this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'room_id') required this.roomId, @JsonKey(name: 'reservation_code') required this.reservationCode, @JsonKey(name: 'customer_ktp_card') this.customerKtpCard, @JsonKey(name: 'start_date') required this.startDate, @JsonKey(name: 'duration_month') required this.durationMonth, @JsonKey(name: 'room_price') required this.roomPrice, @JsonKey(name: 'admin_fee') required this.adminFee, required this.deposit, @JsonKey(name: 'total_price') required this.totalPrice, required this.status, @JsonKey(name: 'payment_due_at') this.paymentDueAt, @JsonKey(name: 'status_label') required this.statusLabel});
  factory _IndexReservation.fromJson(Map<String, dynamic> json) => _$IndexReservationFromJson(json);

@override final  int id;
@override@JsonKey(name: 'user_id') final  int? userId;
@override@JsonKey(name: 'room_id') final  int roomId;
@override@JsonKey(name: 'reservation_code') final  String reservationCode;
@override@JsonKey(name: 'customer_ktp_card') final  String? customerKtpCard;
@override@JsonKey(name: 'start_date') final  String startDate;
@override@JsonKey(name: 'duration_month') final  int durationMonth;
@override@JsonKey(name: 'room_price') final  int roomPrice;
@override@JsonKey(name: 'admin_fee') final  int adminFee;
@override final  int deposit;
@override@JsonKey(name: 'total_price') final  int totalPrice;
@override final  String status;
@override@JsonKey(name: 'payment_due_at') final  String? paymentDueAt;
//
// @JsonKey(name: 'approved_at')
// String? approvedAt,
//
// @JsonKey(name: 'rejected_at')
// String? rejectedAt,
//
// @JsonKey(name: 'cancelled_at')
// String? cancelledAt,
//
// @JsonKey(name: 'expired_at')
// String? expiredAt,
//
// String? note,
//
// @JsonKey(name: 'created_at')
// required String createdAt,
//
// @JsonKey(name: 'updated_at')
// required String updatedAt,
// @JsonKey(name: 'customer_id')
// required int customerId,
@override@JsonKey(name: 'status_label') final  String statusLabel;

/// Create a copy of IndexReservation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IndexReservationCopyWith<_IndexReservation> get copyWith => __$IndexReservationCopyWithImpl<_IndexReservation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IndexReservationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IndexReservation&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.reservationCode, reservationCode) || other.reservationCode == reservationCode)&&(identical(other.customerKtpCard, customerKtpCard) || other.customerKtpCard == customerKtpCard)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.durationMonth, durationMonth) || other.durationMonth == durationMonth)&&(identical(other.roomPrice, roomPrice) || other.roomPrice == roomPrice)&&(identical(other.adminFee, adminFee) || other.adminFee == adminFee)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentDueAt, paymentDueAt) || other.paymentDueAt == paymentDueAt)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,roomId,reservationCode,customerKtpCard,startDate,durationMonth,roomPrice,adminFee,deposit,totalPrice,status,paymentDueAt,statusLabel);

@override
String toString() {
  return 'IndexReservation(id: $id, userId: $userId, roomId: $roomId, reservationCode: $reservationCode, customerKtpCard: $customerKtpCard, startDate: $startDate, durationMonth: $durationMonth, roomPrice: $roomPrice, adminFee: $adminFee, deposit: $deposit, totalPrice: $totalPrice, status: $status, paymentDueAt: $paymentDueAt, statusLabel: $statusLabel)';
}


}

/// @nodoc
abstract mixin class _$IndexReservationCopyWith<$Res> implements $IndexReservationCopyWith<$Res> {
  factory _$IndexReservationCopyWith(_IndexReservation value, $Res Function(_IndexReservation) _then) = __$IndexReservationCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'room_id') int roomId,@JsonKey(name: 'reservation_code') String reservationCode,@JsonKey(name: 'customer_ktp_card') String? customerKtpCard,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'duration_month') int durationMonth,@JsonKey(name: 'room_price') int roomPrice,@JsonKey(name: 'admin_fee') int adminFee, int deposit,@JsonKey(name: 'total_price') int totalPrice, String status,@JsonKey(name: 'payment_due_at') String? paymentDueAt,@JsonKey(name: 'status_label') String statusLabel
});




}
/// @nodoc
class __$IndexReservationCopyWithImpl<$Res>
    implements _$IndexReservationCopyWith<$Res> {
  __$IndexReservationCopyWithImpl(this._self, this._then);

  final _IndexReservation _self;
  final $Res Function(_IndexReservation) _then;

/// Create a copy of IndexReservation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? roomId = null,Object? reservationCode = null,Object? customerKtpCard = freezed,Object? startDate = null,Object? durationMonth = null,Object? roomPrice = null,Object? adminFee = null,Object? deposit = null,Object? totalPrice = null,Object? status = null,Object? paymentDueAt = freezed,Object? statusLabel = null,}) {
  return _then(_IndexReservation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,reservationCode: null == reservationCode ? _self.reservationCode : reservationCode // ignore: cast_nullable_to_non_nullable
as String,customerKtpCard: freezed == customerKtpCard ? _self.customerKtpCard : customerKtpCard // ignore: cast_nullable_to_non_nullable
as String?,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,durationMonth: null == durationMonth ? _self.durationMonth : durationMonth // ignore: cast_nullable_to_non_nullable
as int,roomPrice: null == roomPrice ? _self.roomPrice : roomPrice // ignore: cast_nullable_to_non_nullable
as int,adminFee: null == adminFee ? _self.adminFee : adminFee // ignore: cast_nullable_to_non_nullable
as int,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paymentDueAt: freezed == paymentDueAt ? _self.paymentDueAt : paymentDueAt // ignore: cast_nullable_to_non_nullable
as String?,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
