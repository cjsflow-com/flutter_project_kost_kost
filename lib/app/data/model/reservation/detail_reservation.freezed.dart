// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReservationDetailResponse {

 bool get success; String get message; ReservationDetailData? get data;
/// Create a copy of ReservationDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReservationDetailResponseCopyWith<ReservationDetailResponse> get copyWith => _$ReservationDetailResponseCopyWithImpl<ReservationDetailResponse>(this as ReservationDetailResponse, _$identity);

  /// Serializes this ReservationDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReservationDetailResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'ReservationDetailResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $ReservationDetailResponseCopyWith<$Res>  {
  factory $ReservationDetailResponseCopyWith(ReservationDetailResponse value, $Res Function(ReservationDetailResponse) _then) = _$ReservationDetailResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, ReservationDetailData? data
});


$ReservationDetailDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$ReservationDetailResponseCopyWithImpl<$Res>
    implements $ReservationDetailResponseCopyWith<$Res> {
  _$ReservationDetailResponseCopyWithImpl(this._self, this._then);

  final ReservationDetailResponse _self;
  final $Res Function(ReservationDetailResponse) _then;

/// Create a copy of ReservationDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ReservationDetailData?,
  ));
}
/// Create a copy of ReservationDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReservationDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ReservationDetailDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReservationDetailResponse].
extension ReservationDetailResponsePatterns on ReservationDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReservationDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReservationDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReservationDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReservationDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReservationDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReservationDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  ReservationDetailData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReservationDetailResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  ReservationDetailData? data)  $default,) {final _that = this;
switch (_that) {
case _ReservationDetailResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  ReservationDetailData? data)?  $default,) {final _that = this;
switch (_that) {
case _ReservationDetailResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReservationDetailResponse implements ReservationDetailResponse {
  const _ReservationDetailResponse({required this.success, required this.message, this.data});
  factory _ReservationDetailResponse.fromJson(Map<String, dynamic> json) => _$ReservationDetailResponseFromJson(json);

@override final  bool success;
@override final  String message;
@override final  ReservationDetailData? data;

/// Create a copy of ReservationDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReservationDetailResponseCopyWith<_ReservationDetailResponse> get copyWith => __$ReservationDetailResponseCopyWithImpl<_ReservationDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReservationDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReservationDetailResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'ReservationDetailResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ReservationDetailResponseCopyWith<$Res> implements $ReservationDetailResponseCopyWith<$Res> {
  factory _$ReservationDetailResponseCopyWith(_ReservationDetailResponse value, $Res Function(_ReservationDetailResponse) _then) = __$ReservationDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, ReservationDetailData? data
});


@override $ReservationDetailDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$ReservationDetailResponseCopyWithImpl<$Res>
    implements _$ReservationDetailResponseCopyWith<$Res> {
  __$ReservationDetailResponseCopyWithImpl(this._self, this._then);

  final _ReservationDetailResponse _self;
  final $Res Function(_ReservationDetailResponse) _then;

/// Create a copy of ReservationDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = freezed,}) {
  return _then(_ReservationDetailResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ReservationDetailData?,
  ));
}

/// Create a copy of ReservationDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReservationDetailDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ReservationDetailDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ReservationDetailData {

 int get id;@JsonKey(name: 'reservation_code') String get reservationCode;@JsonKey(name: 'start_date') String get startDate;@JsonKey(name: 'duration_month') int get durationMonth;@JsonKey(name: 'room_price') int get roomPrice;@JsonKey(name: 'admin_fee') int get adminFee; int get deposit;@JsonKey(name: 'total_price') int get totalPrice; String get status;@JsonKey(name: 'payment_due_at') String? get paymentDueAt;@JsonKey(name: 'status_label') String get statusLabel; RoomDetail? get room; PaymentDetail? get payment;@JsonKey(name: 'status_histories') List<StatusHistoryDetail> get statusHistories;
/// Create a copy of ReservationDetailData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReservationDetailDataCopyWith<ReservationDetailData> get copyWith => _$ReservationDetailDataCopyWithImpl<ReservationDetailData>(this as ReservationDetailData, _$identity);

  /// Serializes this ReservationDetailData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReservationDetailData&&(identical(other.id, id) || other.id == id)&&(identical(other.reservationCode, reservationCode) || other.reservationCode == reservationCode)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.durationMonth, durationMonth) || other.durationMonth == durationMonth)&&(identical(other.roomPrice, roomPrice) || other.roomPrice == roomPrice)&&(identical(other.adminFee, adminFee) || other.adminFee == adminFee)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentDueAt, paymentDueAt) || other.paymentDueAt == paymentDueAt)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.room, room) || other.room == room)&&(identical(other.payment, payment) || other.payment == payment)&&const DeepCollectionEquality().equals(other.statusHistories, statusHistories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reservationCode,startDate,durationMonth,roomPrice,adminFee,deposit,totalPrice,status,paymentDueAt,statusLabel,room,payment,const DeepCollectionEquality().hash(statusHistories));

@override
String toString() {
  return 'ReservationDetailData(id: $id, reservationCode: $reservationCode, startDate: $startDate, durationMonth: $durationMonth, roomPrice: $roomPrice, adminFee: $adminFee, deposit: $deposit, totalPrice: $totalPrice, status: $status, paymentDueAt: $paymentDueAt, statusLabel: $statusLabel, room: $room, payment: $payment, statusHistories: $statusHistories)';
}


}

/// @nodoc
abstract mixin class $ReservationDetailDataCopyWith<$Res>  {
  factory $ReservationDetailDataCopyWith(ReservationDetailData value, $Res Function(ReservationDetailData) _then) = _$ReservationDetailDataCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'reservation_code') String reservationCode,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'duration_month') int durationMonth,@JsonKey(name: 'room_price') int roomPrice,@JsonKey(name: 'admin_fee') int adminFee, int deposit,@JsonKey(name: 'total_price') int totalPrice, String status,@JsonKey(name: 'payment_due_at') String? paymentDueAt,@JsonKey(name: 'status_label') String statusLabel, RoomDetail? room, PaymentDetail? payment,@JsonKey(name: 'status_histories') List<StatusHistoryDetail> statusHistories
});


$RoomDetailCopyWith<$Res>? get room;$PaymentDetailCopyWith<$Res>? get payment;

}
/// @nodoc
class _$ReservationDetailDataCopyWithImpl<$Res>
    implements $ReservationDetailDataCopyWith<$Res> {
  _$ReservationDetailDataCopyWithImpl(this._self, this._then);

  final ReservationDetailData _self;
  final $Res Function(ReservationDetailData) _then;

/// Create a copy of ReservationDetailData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? reservationCode = null,Object? startDate = null,Object? durationMonth = null,Object? roomPrice = null,Object? adminFee = null,Object? deposit = null,Object? totalPrice = null,Object? status = null,Object? paymentDueAt = freezed,Object? statusLabel = null,Object? room = freezed,Object? payment = freezed,Object? statusHistories = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reservationCode: null == reservationCode ? _self.reservationCode : reservationCode // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,durationMonth: null == durationMonth ? _self.durationMonth : durationMonth // ignore: cast_nullable_to_non_nullable
as int,roomPrice: null == roomPrice ? _self.roomPrice : roomPrice // ignore: cast_nullable_to_non_nullable
as int,adminFee: null == adminFee ? _self.adminFee : adminFee // ignore: cast_nullable_to_non_nullable
as int,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paymentDueAt: freezed == paymentDueAt ? _self.paymentDueAt : paymentDueAt // ignore: cast_nullable_to_non_nullable
as String?,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as RoomDetail?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentDetail?,statusHistories: null == statusHistories ? _self.statusHistories : statusHistories // ignore: cast_nullable_to_non_nullable
as List<StatusHistoryDetail>,
  ));
}
/// Create a copy of ReservationDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomDetailCopyWith<$Res>? get room {
    if (_self.room == null) {
    return null;
  }

  return $RoomDetailCopyWith<$Res>(_self.room!, (value) {
    return _then(_self.copyWith(room: value));
  });
}/// Create a copy of ReservationDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentDetailCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $PaymentDetailCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReservationDetailData].
extension ReservationDetailDataPatterns on ReservationDetailData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReservationDetailData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReservationDetailData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReservationDetailData value)  $default,){
final _that = this;
switch (_that) {
case _ReservationDetailData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReservationDetailData value)?  $default,){
final _that = this;
switch (_that) {
case _ReservationDetailData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'reservation_code')  String reservationCode, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'duration_month')  int durationMonth, @JsonKey(name: 'room_price')  int roomPrice, @JsonKey(name: 'admin_fee')  int adminFee,  int deposit, @JsonKey(name: 'total_price')  int totalPrice,  String status, @JsonKey(name: 'payment_due_at')  String? paymentDueAt, @JsonKey(name: 'status_label')  String statusLabel,  RoomDetail? room,  PaymentDetail? payment, @JsonKey(name: 'status_histories')  List<StatusHistoryDetail> statusHistories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReservationDetailData() when $default != null:
return $default(_that.id,_that.reservationCode,_that.startDate,_that.durationMonth,_that.roomPrice,_that.adminFee,_that.deposit,_that.totalPrice,_that.status,_that.paymentDueAt,_that.statusLabel,_that.room,_that.payment,_that.statusHistories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'reservation_code')  String reservationCode, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'duration_month')  int durationMonth, @JsonKey(name: 'room_price')  int roomPrice, @JsonKey(name: 'admin_fee')  int adminFee,  int deposit, @JsonKey(name: 'total_price')  int totalPrice,  String status, @JsonKey(name: 'payment_due_at')  String? paymentDueAt, @JsonKey(name: 'status_label')  String statusLabel,  RoomDetail? room,  PaymentDetail? payment, @JsonKey(name: 'status_histories')  List<StatusHistoryDetail> statusHistories)  $default,) {final _that = this;
switch (_that) {
case _ReservationDetailData():
return $default(_that.id,_that.reservationCode,_that.startDate,_that.durationMonth,_that.roomPrice,_that.adminFee,_that.deposit,_that.totalPrice,_that.status,_that.paymentDueAt,_that.statusLabel,_that.room,_that.payment,_that.statusHistories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'reservation_code')  String reservationCode, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'duration_month')  int durationMonth, @JsonKey(name: 'room_price')  int roomPrice, @JsonKey(name: 'admin_fee')  int adminFee,  int deposit, @JsonKey(name: 'total_price')  int totalPrice,  String status, @JsonKey(name: 'payment_due_at')  String? paymentDueAt, @JsonKey(name: 'status_label')  String statusLabel,  RoomDetail? room,  PaymentDetail? payment, @JsonKey(name: 'status_histories')  List<StatusHistoryDetail> statusHistories)?  $default,) {final _that = this;
switch (_that) {
case _ReservationDetailData() when $default != null:
return $default(_that.id,_that.reservationCode,_that.startDate,_that.durationMonth,_that.roomPrice,_that.adminFee,_that.deposit,_that.totalPrice,_that.status,_that.paymentDueAt,_that.statusLabel,_that.room,_that.payment,_that.statusHistories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReservationDetailData implements ReservationDetailData {
  const _ReservationDetailData({required this.id, @JsonKey(name: 'reservation_code') required this.reservationCode, @JsonKey(name: 'start_date') required this.startDate, @JsonKey(name: 'duration_month') required this.durationMonth, @JsonKey(name: 'room_price') required this.roomPrice, @JsonKey(name: 'admin_fee') required this.adminFee, required this.deposit, @JsonKey(name: 'total_price') required this.totalPrice, required this.status, @JsonKey(name: 'payment_due_at') this.paymentDueAt, @JsonKey(name: 'status_label') required this.statusLabel, this.room, this.payment, @JsonKey(name: 'status_histories') final  List<StatusHistoryDetail> statusHistories = const []}): _statusHistories = statusHistories;
  factory _ReservationDetailData.fromJson(Map<String, dynamic> json) => _$ReservationDetailDataFromJson(json);

@override final  int id;
@override@JsonKey(name: 'reservation_code') final  String reservationCode;
@override@JsonKey(name: 'start_date') final  String startDate;
@override@JsonKey(name: 'duration_month') final  int durationMonth;
@override@JsonKey(name: 'room_price') final  int roomPrice;
@override@JsonKey(name: 'admin_fee') final  int adminFee;
@override final  int deposit;
@override@JsonKey(name: 'total_price') final  int totalPrice;
@override final  String status;
@override@JsonKey(name: 'payment_due_at') final  String? paymentDueAt;
@override@JsonKey(name: 'status_label') final  String statusLabel;
@override final  RoomDetail? room;
@override final  PaymentDetail? payment;
 final  List<StatusHistoryDetail> _statusHistories;
@override@JsonKey(name: 'status_histories') List<StatusHistoryDetail> get statusHistories {
  if (_statusHistories is EqualUnmodifiableListView) return _statusHistories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_statusHistories);
}


/// Create a copy of ReservationDetailData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReservationDetailDataCopyWith<_ReservationDetailData> get copyWith => __$ReservationDetailDataCopyWithImpl<_ReservationDetailData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReservationDetailDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReservationDetailData&&(identical(other.id, id) || other.id == id)&&(identical(other.reservationCode, reservationCode) || other.reservationCode == reservationCode)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.durationMonth, durationMonth) || other.durationMonth == durationMonth)&&(identical(other.roomPrice, roomPrice) || other.roomPrice == roomPrice)&&(identical(other.adminFee, adminFee) || other.adminFee == adminFee)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentDueAt, paymentDueAt) || other.paymentDueAt == paymentDueAt)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.room, room) || other.room == room)&&(identical(other.payment, payment) || other.payment == payment)&&const DeepCollectionEquality().equals(other._statusHistories, _statusHistories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reservationCode,startDate,durationMonth,roomPrice,adminFee,deposit,totalPrice,status,paymentDueAt,statusLabel,room,payment,const DeepCollectionEquality().hash(_statusHistories));

@override
String toString() {
  return 'ReservationDetailData(id: $id, reservationCode: $reservationCode, startDate: $startDate, durationMonth: $durationMonth, roomPrice: $roomPrice, adminFee: $adminFee, deposit: $deposit, totalPrice: $totalPrice, status: $status, paymentDueAt: $paymentDueAt, statusLabel: $statusLabel, room: $room, payment: $payment, statusHistories: $statusHistories)';
}


}

/// @nodoc
abstract mixin class _$ReservationDetailDataCopyWith<$Res> implements $ReservationDetailDataCopyWith<$Res> {
  factory _$ReservationDetailDataCopyWith(_ReservationDetailData value, $Res Function(_ReservationDetailData) _then) = __$ReservationDetailDataCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'reservation_code') String reservationCode,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'duration_month') int durationMonth,@JsonKey(name: 'room_price') int roomPrice,@JsonKey(name: 'admin_fee') int adminFee, int deposit,@JsonKey(name: 'total_price') int totalPrice, String status,@JsonKey(name: 'payment_due_at') String? paymentDueAt,@JsonKey(name: 'status_label') String statusLabel, RoomDetail? room, PaymentDetail? payment,@JsonKey(name: 'status_histories') List<StatusHistoryDetail> statusHistories
});


@override $RoomDetailCopyWith<$Res>? get room;@override $PaymentDetailCopyWith<$Res>? get payment;

}
/// @nodoc
class __$ReservationDetailDataCopyWithImpl<$Res>
    implements _$ReservationDetailDataCopyWith<$Res> {
  __$ReservationDetailDataCopyWithImpl(this._self, this._then);

  final _ReservationDetailData _self;
  final $Res Function(_ReservationDetailData) _then;

/// Create a copy of ReservationDetailData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reservationCode = null,Object? startDate = null,Object? durationMonth = null,Object? roomPrice = null,Object? adminFee = null,Object? deposit = null,Object? totalPrice = null,Object? status = null,Object? paymentDueAt = freezed,Object? statusLabel = null,Object? room = freezed,Object? payment = freezed,Object? statusHistories = null,}) {
  return _then(_ReservationDetailData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reservationCode: null == reservationCode ? _self.reservationCode : reservationCode // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,durationMonth: null == durationMonth ? _self.durationMonth : durationMonth // ignore: cast_nullable_to_non_nullable
as int,roomPrice: null == roomPrice ? _self.roomPrice : roomPrice // ignore: cast_nullable_to_non_nullable
as int,adminFee: null == adminFee ? _self.adminFee : adminFee // ignore: cast_nullable_to_non_nullable
as int,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paymentDueAt: freezed == paymentDueAt ? _self.paymentDueAt : paymentDueAt // ignore: cast_nullable_to_non_nullable
as String?,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as RoomDetail?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentDetail?,statusHistories: null == statusHistories ? _self._statusHistories : statusHistories // ignore: cast_nullable_to_non_nullable
as List<StatusHistoryDetail>,
  ));
}

/// Create a copy of ReservationDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomDetailCopyWith<$Res>? get room {
    if (_self.room == null) {
    return null;
  }

  return $RoomDetailCopyWith<$Res>(_self.room!, (value) {
    return _then(_self.copyWith(room: value));
  });
}/// Create a copy of ReservationDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentDetailCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $PaymentDetailCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}


/// @nodoc
mixin _$RoomDetail {

 int get id;@JsonKey(name: 'room_number') String get roomNumber; String get title;/// Dari backend dikirim string: "500000.00"
@JsonKey(name: 'room_size') String get roomSize; int get floor; int get capacity;
/// Create a copy of RoomDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomDetailCopyWith<RoomDetail> get copyWith => _$RoomDetailCopyWithImpl<RoomDetail>(this as RoomDetail, _$identity);

  /// Serializes this RoomDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.roomSize, roomSize) || other.roomSize == roomSize)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.capacity, capacity) || other.capacity == capacity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roomNumber,title,roomSize,floor,capacity);

@override
String toString() {
  return 'RoomDetail(id: $id, roomNumber: $roomNumber, title: $title, roomSize: $roomSize, floor: $floor, capacity: $capacity)';
}


}

/// @nodoc
abstract mixin class $RoomDetailCopyWith<$Res>  {
  factory $RoomDetailCopyWith(RoomDetail value, $Res Function(RoomDetail) _then) = _$RoomDetailCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'room_number') String roomNumber, String title,@JsonKey(name: 'room_size') String roomSize, int floor, int capacity
});




}
/// @nodoc
class _$RoomDetailCopyWithImpl<$Res>
    implements $RoomDetailCopyWith<$Res> {
  _$RoomDetailCopyWithImpl(this._self, this._then);

  final RoomDetail _self;
  final $Res Function(RoomDetail) _then;

/// Create a copy of RoomDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? roomNumber = null,Object? title = null,Object? roomSize = null,Object? floor = null,Object? capacity = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,roomSize: null == roomSize ? _self.roomSize : roomSize // ignore: cast_nullable_to_non_nullable
as String,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomDetail].
extension RoomDetailPatterns on RoomDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomDetail value)  $default,){
final _that = this;
switch (_that) {
case _RoomDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomDetail value)?  $default,){
final _that = this;
switch (_that) {
case _RoomDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'room_number')  String roomNumber,  String title, @JsonKey(name: 'room_size')  String roomSize,  int floor,  int capacity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomDetail() when $default != null:
return $default(_that.id,_that.roomNumber,_that.title,_that.roomSize,_that.floor,_that.capacity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'room_number')  String roomNumber,  String title, @JsonKey(name: 'room_size')  String roomSize,  int floor,  int capacity)  $default,) {final _that = this;
switch (_that) {
case _RoomDetail():
return $default(_that.id,_that.roomNumber,_that.title,_that.roomSize,_that.floor,_that.capacity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'room_number')  String roomNumber,  String title, @JsonKey(name: 'room_size')  String roomSize,  int floor,  int capacity)?  $default,) {final _that = this;
switch (_that) {
case _RoomDetail() when $default != null:
return $default(_that.id,_that.roomNumber,_that.title,_that.roomSize,_that.floor,_that.capacity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoomDetail implements RoomDetail {
  const _RoomDetail({required this.id, @JsonKey(name: 'room_number') required this.roomNumber, required this.title, @JsonKey(name: 'room_size') required this.roomSize, required this.floor, required this.capacity});
  factory _RoomDetail.fromJson(Map<String, dynamic> json) => _$RoomDetailFromJson(json);

@override final  int id;
@override@JsonKey(name: 'room_number') final  String roomNumber;
@override final  String title;
/// Dari backend dikirim string: "500000.00"
@override@JsonKey(name: 'room_size') final  String roomSize;
@override final  int floor;
@override final  int capacity;

/// Create a copy of RoomDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomDetailCopyWith<_RoomDetail> get copyWith => __$RoomDetailCopyWithImpl<_RoomDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoomDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.roomSize, roomSize) || other.roomSize == roomSize)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.capacity, capacity) || other.capacity == capacity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roomNumber,title,roomSize,floor,capacity);

@override
String toString() {
  return 'RoomDetail(id: $id, roomNumber: $roomNumber, title: $title, roomSize: $roomSize, floor: $floor, capacity: $capacity)';
}


}

/// @nodoc
abstract mixin class _$RoomDetailCopyWith<$Res> implements $RoomDetailCopyWith<$Res> {
  factory _$RoomDetailCopyWith(_RoomDetail value, $Res Function(_RoomDetail) _then) = __$RoomDetailCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'room_number') String roomNumber, String title,@JsonKey(name: 'room_size') String roomSize, int floor, int capacity
});




}
/// @nodoc
class __$RoomDetailCopyWithImpl<$Res>
    implements _$RoomDetailCopyWith<$Res> {
  __$RoomDetailCopyWithImpl(this._self, this._then);

  final _RoomDetail _self;
  final $Res Function(_RoomDetail) _then;

/// Create a copy of RoomDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? roomNumber = null,Object? title = null,Object? roomSize = null,Object? floor = null,Object? capacity = null,}) {
  return _then(_RoomDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,roomSize: null == roomSize ? _self.roomSize : roomSize // ignore: cast_nullable_to_non_nullable
as String,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PaymentDetail {

 int get id;@JsonKey(name: 'payment_proof') String? get paymentProof;@JsonKey(name: 'payment_code') String get paymentCode;@JsonKey(name: 'payment_method') PaymentMethodDetail? get paymentMethod;
/// Create a copy of PaymentDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentDetailCopyWith<PaymentDetail> get copyWith => _$PaymentDetailCopyWithImpl<PaymentDetail>(this as PaymentDetail, _$identity);

  /// Serializes this PaymentDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.paymentProof, paymentProof) || other.paymentProof == paymentProof)&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,paymentProof,paymentCode,paymentMethod);

@override
String toString() {
  return 'PaymentDetail(id: $id, paymentProof: $paymentProof, paymentCode: $paymentCode, paymentMethod: $paymentMethod)';
}


}

/// @nodoc
abstract mixin class $PaymentDetailCopyWith<$Res>  {
  factory $PaymentDetailCopyWith(PaymentDetail value, $Res Function(PaymentDetail) _then) = _$PaymentDetailCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'payment_proof') String? paymentProof,@JsonKey(name: 'payment_code') String paymentCode,@JsonKey(name: 'payment_method') PaymentMethodDetail? paymentMethod
});


$PaymentMethodDetailCopyWith<$Res>? get paymentMethod;

}
/// @nodoc
class _$PaymentDetailCopyWithImpl<$Res>
    implements $PaymentDetailCopyWith<$Res> {
  _$PaymentDetailCopyWithImpl(this._self, this._then);

  final PaymentDetail _self;
  final $Res Function(PaymentDetail) _then;

/// Create a copy of PaymentDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? paymentProof = freezed,Object? paymentCode = null,Object? paymentMethod = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,paymentProof: freezed == paymentProof ? _self.paymentProof : paymentProof // ignore: cast_nullable_to_non_nullable
as String?,paymentCode: null == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethodDetail?,
  ));
}
/// Create a copy of PaymentDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentMethodDetailCopyWith<$Res>? get paymentMethod {
    if (_self.paymentMethod == null) {
    return null;
  }

  return $PaymentMethodDetailCopyWith<$Res>(_self.paymentMethod!, (value) {
    return _then(_self.copyWith(paymentMethod: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentDetail].
extension PaymentDetailPatterns on PaymentDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentDetail value)  $default,){
final _that = this;
switch (_that) {
case _PaymentDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentDetail value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'payment_proof')  String? paymentProof, @JsonKey(name: 'payment_code')  String paymentCode, @JsonKey(name: 'payment_method')  PaymentMethodDetail? paymentMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentDetail() when $default != null:
return $default(_that.id,_that.paymentProof,_that.paymentCode,_that.paymentMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'payment_proof')  String? paymentProof, @JsonKey(name: 'payment_code')  String paymentCode, @JsonKey(name: 'payment_method')  PaymentMethodDetail? paymentMethod)  $default,) {final _that = this;
switch (_that) {
case _PaymentDetail():
return $default(_that.id,_that.paymentProof,_that.paymentCode,_that.paymentMethod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'payment_proof')  String? paymentProof, @JsonKey(name: 'payment_code')  String paymentCode, @JsonKey(name: 'payment_method')  PaymentMethodDetail? paymentMethod)?  $default,) {final _that = this;
switch (_that) {
case _PaymentDetail() when $default != null:
return $default(_that.id,_that.paymentProof,_that.paymentCode,_that.paymentMethod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentDetail implements PaymentDetail {
  const _PaymentDetail({required this.id, @JsonKey(name: 'payment_proof') this.paymentProof, @JsonKey(name: 'payment_code') required this.paymentCode, @JsonKey(name: 'payment_method') this.paymentMethod});
  factory _PaymentDetail.fromJson(Map<String, dynamic> json) => _$PaymentDetailFromJson(json);

@override final  int id;
@override@JsonKey(name: 'payment_proof') final  String? paymentProof;
@override@JsonKey(name: 'payment_code') final  String paymentCode;
@override@JsonKey(name: 'payment_method') final  PaymentMethodDetail? paymentMethod;

/// Create a copy of PaymentDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentDetailCopyWith<_PaymentDetail> get copyWith => __$PaymentDetailCopyWithImpl<_PaymentDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.paymentProof, paymentProof) || other.paymentProof == paymentProof)&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,paymentProof,paymentCode,paymentMethod);

@override
String toString() {
  return 'PaymentDetail(id: $id, paymentProof: $paymentProof, paymentCode: $paymentCode, paymentMethod: $paymentMethod)';
}


}

/// @nodoc
abstract mixin class _$PaymentDetailCopyWith<$Res> implements $PaymentDetailCopyWith<$Res> {
  factory _$PaymentDetailCopyWith(_PaymentDetail value, $Res Function(_PaymentDetail) _then) = __$PaymentDetailCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'payment_proof') String? paymentProof,@JsonKey(name: 'payment_code') String paymentCode,@JsonKey(name: 'payment_method') PaymentMethodDetail? paymentMethod
});


@override $PaymentMethodDetailCopyWith<$Res>? get paymentMethod;

}
/// @nodoc
class __$PaymentDetailCopyWithImpl<$Res>
    implements _$PaymentDetailCopyWith<$Res> {
  __$PaymentDetailCopyWithImpl(this._self, this._then);

  final _PaymentDetail _self;
  final $Res Function(_PaymentDetail) _then;

/// Create a copy of PaymentDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? paymentProof = freezed,Object? paymentCode = null,Object? paymentMethod = freezed,}) {
  return _then(_PaymentDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,paymentProof: freezed == paymentProof ? _self.paymentProof : paymentProof // ignore: cast_nullable_to_non_nullable
as String?,paymentCode: null == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethodDetail?,
  ));
}

/// Create a copy of PaymentDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentMethodDetailCopyWith<$Res>? get paymentMethod {
    if (_self.paymentMethod == null) {
    return null;
  }

  return $PaymentMethodDetailCopyWith<$Res>(_self.paymentMethod!, (value) {
    return _then(_self.copyWith(paymentMethod: value));
  });
}
}


/// @nodoc
mixin _$PaymentMethodDetail {

 int get id; String get name; String get type; String? get provider;@JsonKey(name: 'account_number') String? get accountNumber;@JsonKey(name: 'account_name') String? get accountName;
/// Create a copy of PaymentMethodDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentMethodDetailCopyWith<PaymentMethodDetail> get copyWith => _$PaymentMethodDetailCopyWithImpl<PaymentMethodDetail>(this as PaymentMethodDetail, _$identity);

  /// Serializes this PaymentMethodDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentMethodDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountName, accountName) || other.accountName == accountName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,provider,accountNumber,accountName);

@override
String toString() {
  return 'PaymentMethodDetail(id: $id, name: $name, type: $type, provider: $provider, accountNumber: $accountNumber, accountName: $accountName)';
}


}

/// @nodoc
abstract mixin class $PaymentMethodDetailCopyWith<$Res>  {
  factory $PaymentMethodDetailCopyWith(PaymentMethodDetail value, $Res Function(PaymentMethodDetail) _then) = _$PaymentMethodDetailCopyWithImpl;
@useResult
$Res call({
 int id, String name, String type, String? provider,@JsonKey(name: 'account_number') String? accountNumber,@JsonKey(name: 'account_name') String? accountName
});




}
/// @nodoc
class _$PaymentMethodDetailCopyWithImpl<$Res>
    implements $PaymentMethodDetailCopyWith<$Res> {
  _$PaymentMethodDetailCopyWithImpl(this._self, this._then);

  final PaymentMethodDetail _self;
  final $Res Function(PaymentMethodDetail) _then;

/// Create a copy of PaymentMethodDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? provider = freezed,Object? accountNumber = freezed,Object? accountName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String?,accountName: freezed == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentMethodDetail].
extension PaymentMethodDetailPatterns on PaymentMethodDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentMethodDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentMethodDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentMethodDetail value)  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentMethodDetail value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String type,  String? provider, @JsonKey(name: 'account_number')  String? accountNumber, @JsonKey(name: 'account_name')  String? accountName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentMethodDetail() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.provider,_that.accountNumber,_that.accountName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String type,  String? provider, @JsonKey(name: 'account_number')  String? accountNumber, @JsonKey(name: 'account_name')  String? accountName)  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodDetail():
return $default(_that.id,_that.name,_that.type,_that.provider,_that.accountNumber,_that.accountName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String type,  String? provider, @JsonKey(name: 'account_number')  String? accountNumber, @JsonKey(name: 'account_name')  String? accountName)?  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodDetail() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.provider,_that.accountNumber,_that.accountName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentMethodDetail implements PaymentMethodDetail {
  const _PaymentMethodDetail({required this.id, required this.name, required this.type, this.provider, @JsonKey(name: 'account_number') this.accountNumber, @JsonKey(name: 'account_name') this.accountName});
  factory _PaymentMethodDetail.fromJson(Map<String, dynamic> json) => _$PaymentMethodDetailFromJson(json);

@override final  int id;
@override final  String name;
@override final  String type;
@override final  String? provider;
@override@JsonKey(name: 'account_number') final  String? accountNumber;
@override@JsonKey(name: 'account_name') final  String? accountName;

/// Create a copy of PaymentMethodDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentMethodDetailCopyWith<_PaymentMethodDetail> get copyWith => __$PaymentMethodDetailCopyWithImpl<_PaymentMethodDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentMethodDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentMethodDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountName, accountName) || other.accountName == accountName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,provider,accountNumber,accountName);

@override
String toString() {
  return 'PaymentMethodDetail(id: $id, name: $name, type: $type, provider: $provider, accountNumber: $accountNumber, accountName: $accountName)';
}


}

/// @nodoc
abstract mixin class _$PaymentMethodDetailCopyWith<$Res> implements $PaymentMethodDetailCopyWith<$Res> {
  factory _$PaymentMethodDetailCopyWith(_PaymentMethodDetail value, $Res Function(_PaymentMethodDetail) _then) = __$PaymentMethodDetailCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String type, String? provider,@JsonKey(name: 'account_number') String? accountNumber,@JsonKey(name: 'account_name') String? accountName
});




}
/// @nodoc
class __$PaymentMethodDetailCopyWithImpl<$Res>
    implements _$PaymentMethodDetailCopyWith<$Res> {
  __$PaymentMethodDetailCopyWithImpl(this._self, this._then);

  final _PaymentMethodDetail _self;
  final $Res Function(_PaymentMethodDetail) _then;

/// Create a copy of PaymentMethodDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? provider = freezed,Object? accountNumber = freezed,Object? accountName = freezed,}) {
  return _then(_PaymentMethodDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String?,accountName: freezed == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StatusHistoryDetail {

 int get id;@JsonKey(name: 'reservation_id') int get reservationId; String get status; String get title; String get description;
/// Create a copy of StatusHistoryDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusHistoryDetailCopyWith<StatusHistoryDetail> get copyWith => _$StatusHistoryDetailCopyWithImpl<StatusHistoryDetail>(this as StatusHistoryDetail, _$identity);

  /// Serializes this StatusHistoryDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusHistoryDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.reservationId, reservationId) || other.reservationId == reservationId)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reservationId,status,title,description);

@override
String toString() {
  return 'StatusHistoryDetail(id: $id, reservationId: $reservationId, status: $status, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $StatusHistoryDetailCopyWith<$Res>  {
  factory $StatusHistoryDetailCopyWith(StatusHistoryDetail value, $Res Function(StatusHistoryDetail) _then) = _$StatusHistoryDetailCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'reservation_id') int reservationId, String status, String title, String description
});




}
/// @nodoc
class _$StatusHistoryDetailCopyWithImpl<$Res>
    implements $StatusHistoryDetailCopyWith<$Res> {
  _$StatusHistoryDetailCopyWithImpl(this._self, this._then);

  final StatusHistoryDetail _self;
  final $Res Function(StatusHistoryDetail) _then;

/// Create a copy of StatusHistoryDetail
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


/// Adds pattern-matching-related methods to [StatusHistoryDetail].
extension StatusHistoryDetailPatterns on StatusHistoryDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatusHistoryDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatusHistoryDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatusHistoryDetail value)  $default,){
final _that = this;
switch (_that) {
case _StatusHistoryDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatusHistoryDetail value)?  $default,){
final _that = this;
switch (_that) {
case _StatusHistoryDetail() when $default != null:
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
case _StatusHistoryDetail() when $default != null:
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
case _StatusHistoryDetail():
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
case _StatusHistoryDetail() when $default != null:
return $default(_that.id,_that.reservationId,_that.status,_that.title,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatusHistoryDetail implements StatusHistoryDetail {
  const _StatusHistoryDetail({required this.id, @JsonKey(name: 'reservation_id') required this.reservationId, required this.status, required this.title, required this.description});
  factory _StatusHistoryDetail.fromJson(Map<String, dynamic> json) => _$StatusHistoryDetailFromJson(json);

@override final  int id;
@override@JsonKey(name: 'reservation_id') final  int reservationId;
@override final  String status;
@override final  String title;
@override final  String description;

/// Create a copy of StatusHistoryDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusHistoryDetailCopyWith<_StatusHistoryDetail> get copyWith => __$StatusHistoryDetailCopyWithImpl<_StatusHistoryDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatusHistoryDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatusHistoryDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.reservationId, reservationId) || other.reservationId == reservationId)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reservationId,status,title,description);

@override
String toString() {
  return 'StatusHistoryDetail(id: $id, reservationId: $reservationId, status: $status, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$StatusHistoryDetailCopyWith<$Res> implements $StatusHistoryDetailCopyWith<$Res> {
  factory _$StatusHistoryDetailCopyWith(_StatusHistoryDetail value, $Res Function(_StatusHistoryDetail) _then) = __$StatusHistoryDetailCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'reservation_id') int reservationId, String status, String title, String description
});




}
/// @nodoc
class __$StatusHistoryDetailCopyWithImpl<$Res>
    implements _$StatusHistoryDetailCopyWith<$Res> {
  __$StatusHistoryDetailCopyWithImpl(this._self, this._then);

  final _StatusHistoryDetail _self;
  final $Res Function(_StatusHistoryDetail) _then;

/// Create a copy of StatusHistoryDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reservationId = null,Object? status = null,Object? title = null,Object? description = null,}) {
  return _then(_StatusHistoryDetail(
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
