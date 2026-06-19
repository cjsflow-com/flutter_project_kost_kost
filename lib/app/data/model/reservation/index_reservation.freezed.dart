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

 int get id;@JsonKey(name: 'user_id') int? get userId;@JsonKey(name: 'room_id') int get roomId;@JsonKey(name: 'reservation_code') String get reservationCode;@JsonKey(name: 'customer_ktp_card') String? get customerKtpCard;@JsonKey(name: 'start_date') String get startDate;@JsonKey(name: 'duration_month') int get durationMonth;@JsonKey(name: 'room_price') int get roomPrice;@JsonKey(name: 'admin_fee') int get adminFee; int get deposit;@JsonKey(name: 'total_price') int get totalPrice; String get status;@JsonKey(name: 'payment_due_at') String? get paymentDueAt;// payment
 IndexReservationPayment? get payment;//
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndexReservation&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.reservationCode, reservationCode) || other.reservationCode == reservationCode)&&(identical(other.customerKtpCard, customerKtpCard) || other.customerKtpCard == customerKtpCard)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.durationMonth, durationMonth) || other.durationMonth == durationMonth)&&(identical(other.roomPrice, roomPrice) || other.roomPrice == roomPrice)&&(identical(other.adminFee, adminFee) || other.adminFee == adminFee)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentDueAt, paymentDueAt) || other.paymentDueAt == paymentDueAt)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,roomId,reservationCode,customerKtpCard,startDate,durationMonth,roomPrice,adminFee,deposit,totalPrice,status,paymentDueAt,payment,statusLabel);

@override
String toString() {
  return 'IndexReservation(id: $id, userId: $userId, roomId: $roomId, reservationCode: $reservationCode, customerKtpCard: $customerKtpCard, startDate: $startDate, durationMonth: $durationMonth, roomPrice: $roomPrice, adminFee: $adminFee, deposit: $deposit, totalPrice: $totalPrice, status: $status, paymentDueAt: $paymentDueAt, payment: $payment, statusLabel: $statusLabel)';
}


}

/// @nodoc
abstract mixin class $IndexReservationCopyWith<$Res>  {
  factory $IndexReservationCopyWith(IndexReservation value, $Res Function(IndexReservation) _then) = _$IndexReservationCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'room_id') int roomId,@JsonKey(name: 'reservation_code') String reservationCode,@JsonKey(name: 'customer_ktp_card') String? customerKtpCard,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'duration_month') int durationMonth,@JsonKey(name: 'room_price') int roomPrice,@JsonKey(name: 'admin_fee') int adminFee, int deposit,@JsonKey(name: 'total_price') int totalPrice, String status,@JsonKey(name: 'payment_due_at') String? paymentDueAt, IndexReservationPayment? payment,@JsonKey(name: 'status_label') String statusLabel
});


$IndexReservationPaymentCopyWith<$Res>? get payment;

}
/// @nodoc
class _$IndexReservationCopyWithImpl<$Res>
    implements $IndexReservationCopyWith<$Res> {
  _$IndexReservationCopyWithImpl(this._self, this._then);

  final IndexReservation _self;
  final $Res Function(IndexReservation) _then;

/// Create a copy of IndexReservation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? roomId = null,Object? reservationCode = null,Object? customerKtpCard = freezed,Object? startDate = null,Object? durationMonth = null,Object? roomPrice = null,Object? adminFee = null,Object? deposit = null,Object? totalPrice = null,Object? status = null,Object? paymentDueAt = freezed,Object? payment = freezed,Object? statusLabel = null,}) {
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
as String?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as IndexReservationPayment?,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of IndexReservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IndexReservationPaymentCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $IndexReservationPaymentCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'room_id')  int roomId, @JsonKey(name: 'reservation_code')  String reservationCode, @JsonKey(name: 'customer_ktp_card')  String? customerKtpCard, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'duration_month')  int durationMonth, @JsonKey(name: 'room_price')  int roomPrice, @JsonKey(name: 'admin_fee')  int adminFee,  int deposit, @JsonKey(name: 'total_price')  int totalPrice,  String status, @JsonKey(name: 'payment_due_at')  String? paymentDueAt,  IndexReservationPayment? payment, @JsonKey(name: 'status_label')  String statusLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IndexReservation() when $default != null:
return $default(_that.id,_that.userId,_that.roomId,_that.reservationCode,_that.customerKtpCard,_that.startDate,_that.durationMonth,_that.roomPrice,_that.adminFee,_that.deposit,_that.totalPrice,_that.status,_that.paymentDueAt,_that.payment,_that.statusLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'room_id')  int roomId, @JsonKey(name: 'reservation_code')  String reservationCode, @JsonKey(name: 'customer_ktp_card')  String? customerKtpCard, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'duration_month')  int durationMonth, @JsonKey(name: 'room_price')  int roomPrice, @JsonKey(name: 'admin_fee')  int adminFee,  int deposit, @JsonKey(name: 'total_price')  int totalPrice,  String status, @JsonKey(name: 'payment_due_at')  String? paymentDueAt,  IndexReservationPayment? payment, @JsonKey(name: 'status_label')  String statusLabel)  $default,) {final _that = this;
switch (_that) {
case _IndexReservation():
return $default(_that.id,_that.userId,_that.roomId,_that.reservationCode,_that.customerKtpCard,_that.startDate,_that.durationMonth,_that.roomPrice,_that.adminFee,_that.deposit,_that.totalPrice,_that.status,_that.paymentDueAt,_that.payment,_that.statusLabel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'user_id')  int? userId, @JsonKey(name: 'room_id')  int roomId, @JsonKey(name: 'reservation_code')  String reservationCode, @JsonKey(name: 'customer_ktp_card')  String? customerKtpCard, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'duration_month')  int durationMonth, @JsonKey(name: 'room_price')  int roomPrice, @JsonKey(name: 'admin_fee')  int adminFee,  int deposit, @JsonKey(name: 'total_price')  int totalPrice,  String status, @JsonKey(name: 'payment_due_at')  String? paymentDueAt,  IndexReservationPayment? payment, @JsonKey(name: 'status_label')  String statusLabel)?  $default,) {final _that = this;
switch (_that) {
case _IndexReservation() when $default != null:
return $default(_that.id,_that.userId,_that.roomId,_that.reservationCode,_that.customerKtpCard,_that.startDate,_that.durationMonth,_that.roomPrice,_that.adminFee,_that.deposit,_that.totalPrice,_that.status,_that.paymentDueAt,_that.payment,_that.statusLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IndexReservation implements IndexReservation {
  const _IndexReservation({required this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'room_id') required this.roomId, @JsonKey(name: 'reservation_code') required this.reservationCode, @JsonKey(name: 'customer_ktp_card') this.customerKtpCard, @JsonKey(name: 'start_date') required this.startDate, @JsonKey(name: 'duration_month') required this.durationMonth, @JsonKey(name: 'room_price') required this.roomPrice, @JsonKey(name: 'admin_fee') required this.adminFee, required this.deposit, @JsonKey(name: 'total_price') required this.totalPrice, required this.status, @JsonKey(name: 'payment_due_at') this.paymentDueAt, this.payment, @JsonKey(name: 'status_label') required this.statusLabel});
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
// payment
@override final  IndexReservationPayment? payment;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IndexReservation&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.reservationCode, reservationCode) || other.reservationCode == reservationCode)&&(identical(other.customerKtpCard, customerKtpCard) || other.customerKtpCard == customerKtpCard)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.durationMonth, durationMonth) || other.durationMonth == durationMonth)&&(identical(other.roomPrice, roomPrice) || other.roomPrice == roomPrice)&&(identical(other.adminFee, adminFee) || other.adminFee == adminFee)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentDueAt, paymentDueAt) || other.paymentDueAt == paymentDueAt)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,roomId,reservationCode,customerKtpCard,startDate,durationMonth,roomPrice,adminFee,deposit,totalPrice,status,paymentDueAt,payment,statusLabel);

@override
String toString() {
  return 'IndexReservation(id: $id, userId: $userId, roomId: $roomId, reservationCode: $reservationCode, customerKtpCard: $customerKtpCard, startDate: $startDate, durationMonth: $durationMonth, roomPrice: $roomPrice, adminFee: $adminFee, deposit: $deposit, totalPrice: $totalPrice, status: $status, paymentDueAt: $paymentDueAt, payment: $payment, statusLabel: $statusLabel)';
}


}

/// @nodoc
abstract mixin class _$IndexReservationCopyWith<$Res> implements $IndexReservationCopyWith<$Res> {
  factory _$IndexReservationCopyWith(_IndexReservation value, $Res Function(_IndexReservation) _then) = __$IndexReservationCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int? userId,@JsonKey(name: 'room_id') int roomId,@JsonKey(name: 'reservation_code') String reservationCode,@JsonKey(name: 'customer_ktp_card') String? customerKtpCard,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'duration_month') int durationMonth,@JsonKey(name: 'room_price') int roomPrice,@JsonKey(name: 'admin_fee') int adminFee, int deposit,@JsonKey(name: 'total_price') int totalPrice, String status,@JsonKey(name: 'payment_due_at') String? paymentDueAt, IndexReservationPayment? payment,@JsonKey(name: 'status_label') String statusLabel
});


@override $IndexReservationPaymentCopyWith<$Res>? get payment;

}
/// @nodoc
class __$IndexReservationCopyWithImpl<$Res>
    implements _$IndexReservationCopyWith<$Res> {
  __$IndexReservationCopyWithImpl(this._self, this._then);

  final _IndexReservation _self;
  final $Res Function(_IndexReservation) _then;

/// Create a copy of IndexReservation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? roomId = null,Object? reservationCode = null,Object? customerKtpCard = freezed,Object? startDate = null,Object? durationMonth = null,Object? roomPrice = null,Object? adminFee = null,Object? deposit = null,Object? totalPrice = null,Object? status = null,Object? paymentDueAt = freezed,Object? payment = freezed,Object? statusLabel = null,}) {
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
as String?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as IndexReservationPayment?,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of IndexReservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IndexReservationPaymentCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $IndexReservationPaymentCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}


/// @nodoc
mixin _$IndexReservationPayment {

 int get id;@JsonKey(name: 'reservation_id') int get reservationId;@JsonKey(name: 'payment_method_id') int get paymentMethodId;@JsonKey(name: 'payment_proof') String? get paymentProof;@JsonKey(name: 'payment_code') String get paymentCode;// dari backend amount bentuknya String: "3600000.00"
 String get amount; String get status;@JsonKey(name: 'paid_at') String? get paidAt;@JsonKey(name: 'uploaded_at') String? get uploadedAt;@JsonKey(name: 'verified_at') String? get verifiedAt;@JsonKey(name: 'rejected_at') String? get rejectedAt; String? get note;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;@JsonKey(name: 'status_label') String get statusLabel;
/// Create a copy of IndexReservationPayment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IndexReservationPaymentCopyWith<IndexReservationPayment> get copyWith => _$IndexReservationPaymentCopyWithImpl<IndexReservationPayment>(this as IndexReservationPayment, _$identity);

  /// Serializes this IndexReservationPayment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndexReservationPayment&&(identical(other.id, id) || other.id == id)&&(identical(other.reservationId, reservationId) || other.reservationId == reservationId)&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId)&&(identical(other.paymentProof, paymentProof) || other.paymentProof == paymentProof)&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.rejectedAt, rejectedAt) || other.rejectedAt == rejectedAt)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reservationId,paymentMethodId,paymentProof,paymentCode,amount,status,paidAt,uploadedAt,verifiedAt,rejectedAt,note,createdAt,updatedAt,statusLabel);

@override
String toString() {
  return 'IndexReservationPayment(id: $id, reservationId: $reservationId, paymentMethodId: $paymentMethodId, paymentProof: $paymentProof, paymentCode: $paymentCode, amount: $amount, status: $status, paidAt: $paidAt, uploadedAt: $uploadedAt, verifiedAt: $verifiedAt, rejectedAt: $rejectedAt, note: $note, createdAt: $createdAt, updatedAt: $updatedAt, statusLabel: $statusLabel)';
}


}

/// @nodoc
abstract mixin class $IndexReservationPaymentCopyWith<$Res>  {
  factory $IndexReservationPaymentCopyWith(IndexReservationPayment value, $Res Function(IndexReservationPayment) _then) = _$IndexReservationPaymentCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'reservation_id') int reservationId,@JsonKey(name: 'payment_method_id') int paymentMethodId,@JsonKey(name: 'payment_proof') String? paymentProof,@JsonKey(name: 'payment_code') String paymentCode, String amount, String status,@JsonKey(name: 'paid_at') String? paidAt,@JsonKey(name: 'uploaded_at') String? uploadedAt,@JsonKey(name: 'verified_at') String? verifiedAt,@JsonKey(name: 'rejected_at') String? rejectedAt, String? note,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt,@JsonKey(name: 'status_label') String statusLabel
});




}
/// @nodoc
class _$IndexReservationPaymentCopyWithImpl<$Res>
    implements $IndexReservationPaymentCopyWith<$Res> {
  _$IndexReservationPaymentCopyWithImpl(this._self, this._then);

  final IndexReservationPayment _self;
  final $Res Function(IndexReservationPayment) _then;

/// Create a copy of IndexReservationPayment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? reservationId = null,Object? paymentMethodId = null,Object? paymentProof = freezed,Object? paymentCode = null,Object? amount = null,Object? status = null,Object? paidAt = freezed,Object? uploadedAt = freezed,Object? verifiedAt = freezed,Object? rejectedAt = freezed,Object? note = freezed,Object? createdAt = null,Object? updatedAt = null,Object? statusLabel = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reservationId: null == reservationId ? _self.reservationId : reservationId // ignore: cast_nullable_to_non_nullable
as int,paymentMethodId: null == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as int,paymentProof: freezed == paymentProof ? _self.paymentProof : paymentProof // ignore: cast_nullable_to_non_nullable
as String?,paymentCode: null == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as String?,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as String?,rejectedAt: freezed == rejectedAt ? _self.rejectedAt : rejectedAt // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [IndexReservationPayment].
extension IndexReservationPaymentPatterns on IndexReservationPayment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IndexReservationPayment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IndexReservationPayment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IndexReservationPayment value)  $default,){
final _that = this;
switch (_that) {
case _IndexReservationPayment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IndexReservationPayment value)?  $default,){
final _that = this;
switch (_that) {
case _IndexReservationPayment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'reservation_id')  int reservationId, @JsonKey(name: 'payment_method_id')  int paymentMethodId, @JsonKey(name: 'payment_proof')  String? paymentProof, @JsonKey(name: 'payment_code')  String paymentCode,  String amount,  String status, @JsonKey(name: 'paid_at')  String? paidAt, @JsonKey(name: 'uploaded_at')  String? uploadedAt, @JsonKey(name: 'verified_at')  String? verifiedAt, @JsonKey(name: 'rejected_at')  String? rejectedAt,  String? note, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'status_label')  String statusLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IndexReservationPayment() when $default != null:
return $default(_that.id,_that.reservationId,_that.paymentMethodId,_that.paymentProof,_that.paymentCode,_that.amount,_that.status,_that.paidAt,_that.uploadedAt,_that.verifiedAt,_that.rejectedAt,_that.note,_that.createdAt,_that.updatedAt,_that.statusLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'reservation_id')  int reservationId, @JsonKey(name: 'payment_method_id')  int paymentMethodId, @JsonKey(name: 'payment_proof')  String? paymentProof, @JsonKey(name: 'payment_code')  String paymentCode,  String amount,  String status, @JsonKey(name: 'paid_at')  String? paidAt, @JsonKey(name: 'uploaded_at')  String? uploadedAt, @JsonKey(name: 'verified_at')  String? verifiedAt, @JsonKey(name: 'rejected_at')  String? rejectedAt,  String? note, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'status_label')  String statusLabel)  $default,) {final _that = this;
switch (_that) {
case _IndexReservationPayment():
return $default(_that.id,_that.reservationId,_that.paymentMethodId,_that.paymentProof,_that.paymentCode,_that.amount,_that.status,_that.paidAt,_that.uploadedAt,_that.verifiedAt,_that.rejectedAt,_that.note,_that.createdAt,_that.updatedAt,_that.statusLabel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'reservation_id')  int reservationId, @JsonKey(name: 'payment_method_id')  int paymentMethodId, @JsonKey(name: 'payment_proof')  String? paymentProof, @JsonKey(name: 'payment_code')  String paymentCode,  String amount,  String status, @JsonKey(name: 'paid_at')  String? paidAt, @JsonKey(name: 'uploaded_at')  String? uploadedAt, @JsonKey(name: 'verified_at')  String? verifiedAt, @JsonKey(name: 'rejected_at')  String? rejectedAt,  String? note, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'status_label')  String statusLabel)?  $default,) {final _that = this;
switch (_that) {
case _IndexReservationPayment() when $default != null:
return $default(_that.id,_that.reservationId,_that.paymentMethodId,_that.paymentProof,_that.paymentCode,_that.amount,_that.status,_that.paidAt,_that.uploadedAt,_that.verifiedAt,_that.rejectedAt,_that.note,_that.createdAt,_that.updatedAt,_that.statusLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IndexReservationPayment implements IndexReservationPayment {
  const _IndexReservationPayment({required this.id, @JsonKey(name: 'reservation_id') required this.reservationId, @JsonKey(name: 'payment_method_id') required this.paymentMethodId, @JsonKey(name: 'payment_proof') this.paymentProof, @JsonKey(name: 'payment_code') required this.paymentCode, required this.amount, required this.status, @JsonKey(name: 'paid_at') this.paidAt, @JsonKey(name: 'uploaded_at') this.uploadedAt, @JsonKey(name: 'verified_at') this.verifiedAt, @JsonKey(name: 'rejected_at') this.rejectedAt, this.note, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, @JsonKey(name: 'status_label') required this.statusLabel});
  factory _IndexReservationPayment.fromJson(Map<String, dynamic> json) => _$IndexReservationPaymentFromJson(json);

@override final  int id;
@override@JsonKey(name: 'reservation_id') final  int reservationId;
@override@JsonKey(name: 'payment_method_id') final  int paymentMethodId;
@override@JsonKey(name: 'payment_proof') final  String? paymentProof;
@override@JsonKey(name: 'payment_code') final  String paymentCode;
// dari backend amount bentuknya String: "3600000.00"
@override final  String amount;
@override final  String status;
@override@JsonKey(name: 'paid_at') final  String? paidAt;
@override@JsonKey(name: 'uploaded_at') final  String? uploadedAt;
@override@JsonKey(name: 'verified_at') final  String? verifiedAt;
@override@JsonKey(name: 'rejected_at') final  String? rejectedAt;
@override final  String? note;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;
@override@JsonKey(name: 'status_label') final  String statusLabel;

/// Create a copy of IndexReservationPayment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IndexReservationPaymentCopyWith<_IndexReservationPayment> get copyWith => __$IndexReservationPaymentCopyWithImpl<_IndexReservationPayment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IndexReservationPaymentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IndexReservationPayment&&(identical(other.id, id) || other.id == id)&&(identical(other.reservationId, reservationId) || other.reservationId == reservationId)&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId)&&(identical(other.paymentProof, paymentProof) || other.paymentProof == paymentProof)&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.rejectedAt, rejectedAt) || other.rejectedAt == rejectedAt)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reservationId,paymentMethodId,paymentProof,paymentCode,amount,status,paidAt,uploadedAt,verifiedAt,rejectedAt,note,createdAt,updatedAt,statusLabel);

@override
String toString() {
  return 'IndexReservationPayment(id: $id, reservationId: $reservationId, paymentMethodId: $paymentMethodId, paymentProof: $paymentProof, paymentCode: $paymentCode, amount: $amount, status: $status, paidAt: $paidAt, uploadedAt: $uploadedAt, verifiedAt: $verifiedAt, rejectedAt: $rejectedAt, note: $note, createdAt: $createdAt, updatedAt: $updatedAt, statusLabel: $statusLabel)';
}


}

/// @nodoc
abstract mixin class _$IndexReservationPaymentCopyWith<$Res> implements $IndexReservationPaymentCopyWith<$Res> {
  factory _$IndexReservationPaymentCopyWith(_IndexReservationPayment value, $Res Function(_IndexReservationPayment) _then) = __$IndexReservationPaymentCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'reservation_id') int reservationId,@JsonKey(name: 'payment_method_id') int paymentMethodId,@JsonKey(name: 'payment_proof') String? paymentProof,@JsonKey(name: 'payment_code') String paymentCode, String amount, String status,@JsonKey(name: 'paid_at') String? paidAt,@JsonKey(name: 'uploaded_at') String? uploadedAt,@JsonKey(name: 'verified_at') String? verifiedAt,@JsonKey(name: 'rejected_at') String? rejectedAt, String? note,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt,@JsonKey(name: 'status_label') String statusLabel
});




}
/// @nodoc
class __$IndexReservationPaymentCopyWithImpl<$Res>
    implements _$IndexReservationPaymentCopyWith<$Res> {
  __$IndexReservationPaymentCopyWithImpl(this._self, this._then);

  final _IndexReservationPayment _self;
  final $Res Function(_IndexReservationPayment) _then;

/// Create a copy of IndexReservationPayment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reservationId = null,Object? paymentMethodId = null,Object? paymentProof = freezed,Object? paymentCode = null,Object? amount = null,Object? status = null,Object? paidAt = freezed,Object? uploadedAt = freezed,Object? verifiedAt = freezed,Object? rejectedAt = freezed,Object? note = freezed,Object? createdAt = null,Object? updatedAt = null,Object? statusLabel = null,}) {
  return _then(_IndexReservationPayment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reservationId: null == reservationId ? _self.reservationId : reservationId // ignore: cast_nullable_to_non_nullable
as int,paymentMethodId: null == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as int,paymentProof: freezed == paymentProof ? _self.paymentProof : paymentProof // ignore: cast_nullable_to_non_nullable
as String?,paymentCode: null == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as String?,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as String?,rejectedAt: freezed == rejectedAt ? _self.rejectedAt : rejectedAt // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
