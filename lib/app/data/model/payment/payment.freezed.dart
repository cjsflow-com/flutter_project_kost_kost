// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePaymentResponse {

 bool get success; String get message; CreatePaymentData get data;
/// Create a copy of CreatePaymentResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePaymentResponseCopyWith<CreatePaymentResponse> get copyWith => _$CreatePaymentResponseCopyWithImpl<CreatePaymentResponse>(this as CreatePaymentResponse, _$identity);

  /// Serializes this CreatePaymentResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePaymentResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'CreatePaymentResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $CreatePaymentResponseCopyWith<$Res>  {
  factory $CreatePaymentResponseCopyWith(CreatePaymentResponse value, $Res Function(CreatePaymentResponse) _then) = _$CreatePaymentResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, CreatePaymentData data
});


$CreatePaymentDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CreatePaymentResponseCopyWithImpl<$Res>
    implements $CreatePaymentResponseCopyWith<$Res> {
  _$CreatePaymentResponseCopyWithImpl(this._self, this._then);

  final CreatePaymentResponse _self;
  final $Res Function(CreatePaymentResponse) _then;

/// Create a copy of CreatePaymentResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreatePaymentData,
  ));
}
/// Create a copy of CreatePaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatePaymentDataCopyWith<$Res> get data {
  
  return $CreatePaymentDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreatePaymentResponse].
extension CreatePaymentResponsePatterns on CreatePaymentResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePaymentResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePaymentResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePaymentResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreatePaymentResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePaymentResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePaymentResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  CreatePaymentData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePaymentResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  CreatePaymentData data)  $default,) {final _that = this;
switch (_that) {
case _CreatePaymentResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  CreatePaymentData data)?  $default,) {final _that = this;
switch (_that) {
case _CreatePaymentResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePaymentResponse implements CreatePaymentResponse {
  const _CreatePaymentResponse({required this.success, required this.message, required this.data});
  factory _CreatePaymentResponse.fromJson(Map<String, dynamic> json) => _$CreatePaymentResponseFromJson(json);

@override final  bool success;
@override final  String message;
@override final  CreatePaymentData data;

/// Create a copy of CreatePaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePaymentResponseCopyWith<_CreatePaymentResponse> get copyWith => __$CreatePaymentResponseCopyWithImpl<_CreatePaymentResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePaymentResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePaymentResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'CreatePaymentResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CreatePaymentResponseCopyWith<$Res> implements $CreatePaymentResponseCopyWith<$Res> {
  factory _$CreatePaymentResponseCopyWith(_CreatePaymentResponse value, $Res Function(_CreatePaymentResponse) _then) = __$CreatePaymentResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, CreatePaymentData data
});


@override $CreatePaymentDataCopyWith<$Res> get data;

}
/// @nodoc
class __$CreatePaymentResponseCopyWithImpl<$Res>
    implements _$CreatePaymentResponseCopyWith<$Res> {
  __$CreatePaymentResponseCopyWithImpl(this._self, this._then);

  final _CreatePaymentResponse _self;
  final $Res Function(_CreatePaymentResponse) _then;

/// Create a copy of CreatePaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,}) {
  return _then(_CreatePaymentResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreatePaymentData,
  ));
}

/// Create a copy of CreatePaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatePaymentDataCopyWith<$Res> get data {
  
  return $CreatePaymentDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CreatePaymentData {

 Payment get payment;
/// Create a copy of CreatePaymentData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePaymentDataCopyWith<CreatePaymentData> get copyWith => _$CreatePaymentDataCopyWithImpl<CreatePaymentData>(this as CreatePaymentData, _$identity);

  /// Serializes this CreatePaymentData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePaymentData&&(identical(other.payment, payment) || other.payment == payment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,payment);

@override
String toString() {
  return 'CreatePaymentData(payment: $payment)';
}


}

/// @nodoc
abstract mixin class $CreatePaymentDataCopyWith<$Res>  {
  factory $CreatePaymentDataCopyWith(CreatePaymentData value, $Res Function(CreatePaymentData) _then) = _$CreatePaymentDataCopyWithImpl;
@useResult
$Res call({
 Payment payment
});


$PaymentCopyWith<$Res> get payment;

}
/// @nodoc
class _$CreatePaymentDataCopyWithImpl<$Res>
    implements $CreatePaymentDataCopyWith<$Res> {
  _$CreatePaymentDataCopyWithImpl(this._self, this._then);

  final CreatePaymentData _self;
  final $Res Function(CreatePaymentData) _then;

/// Create a copy of CreatePaymentData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? payment = null,}) {
  return _then(_self.copyWith(
payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as Payment,
  ));
}
/// Create a copy of CreatePaymentData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentCopyWith<$Res> get payment {
  
  return $PaymentCopyWith<$Res>(_self.payment, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreatePaymentData].
extension CreatePaymentDataPatterns on CreatePaymentData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePaymentData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePaymentData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePaymentData value)  $default,){
final _that = this;
switch (_that) {
case _CreatePaymentData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePaymentData value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePaymentData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Payment payment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePaymentData() when $default != null:
return $default(_that.payment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Payment payment)  $default,) {final _that = this;
switch (_that) {
case _CreatePaymentData():
return $default(_that.payment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Payment payment)?  $default,) {final _that = this;
switch (_that) {
case _CreatePaymentData() when $default != null:
return $default(_that.payment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePaymentData implements CreatePaymentData {
  const _CreatePaymentData({required this.payment});
  factory _CreatePaymentData.fromJson(Map<String, dynamic> json) => _$CreatePaymentDataFromJson(json);

@override final  Payment payment;

/// Create a copy of CreatePaymentData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePaymentDataCopyWith<_CreatePaymentData> get copyWith => __$CreatePaymentDataCopyWithImpl<_CreatePaymentData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePaymentDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePaymentData&&(identical(other.payment, payment) || other.payment == payment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,payment);

@override
String toString() {
  return 'CreatePaymentData(payment: $payment)';
}


}

/// @nodoc
abstract mixin class _$CreatePaymentDataCopyWith<$Res> implements $CreatePaymentDataCopyWith<$Res> {
  factory _$CreatePaymentDataCopyWith(_CreatePaymentData value, $Res Function(_CreatePaymentData) _then) = __$CreatePaymentDataCopyWithImpl;
@override @useResult
$Res call({
 Payment payment
});


@override $PaymentCopyWith<$Res> get payment;

}
/// @nodoc
class __$CreatePaymentDataCopyWithImpl<$Res>
    implements _$CreatePaymentDataCopyWith<$Res> {
  __$CreatePaymentDataCopyWithImpl(this._self, this._then);

  final _CreatePaymentData _self;
  final $Res Function(_CreatePaymentData) _then;

/// Create a copy of CreatePaymentData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? payment = null,}) {
  return _then(_CreatePaymentData(
payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as Payment,
  ));
}

/// Create a copy of CreatePaymentData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentCopyWith<$Res> get payment {
  
  return $PaymentCopyWith<$Res>(_self.payment, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}


/// @nodoc
mixin _$Payment {

 int get id;@JsonKey(name: 'reservation_id') int get reservationId;@JsonKey(name: 'payment_method_id') String get paymentMethodId; String get amount; String get status;@JsonKey(name: 'payment_code') String get paymentCode;@JsonKey(name: 'status_label') String get statusLabel;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCopyWith<Payment> get copyWith => _$PaymentCopyWithImpl<Payment>(this as Payment, _$identity);

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payment&&(identical(other.id, id) || other.id == id)&&(identical(other.reservationId, reservationId) || other.reservationId == reservationId)&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reservationId,paymentMethodId,amount,status,paymentCode,statusLabel,createdAt,updatedAt);

@override
String toString() {
  return 'Payment(id: $id, reservationId: $reservationId, paymentMethodId: $paymentMethodId, amount: $amount, status: $status, paymentCode: $paymentCode, statusLabel: $statusLabel, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PaymentCopyWith<$Res>  {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) _then) = _$PaymentCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'reservation_id') int reservationId,@JsonKey(name: 'payment_method_id') String paymentMethodId, String amount, String status,@JsonKey(name: 'payment_code') String paymentCode,@JsonKey(name: 'status_label') String statusLabel,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class _$PaymentCopyWithImpl<$Res>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._self, this._then);

  final Payment _self;
  final $Res Function(Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? reservationId = null,Object? paymentMethodId = null,Object? amount = null,Object? status = null,Object? paymentCode = null,Object? statusLabel = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reservationId: null == reservationId ? _self.reservationId : reservationId // ignore: cast_nullable_to_non_nullable
as int,paymentMethodId: null == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paymentCode: null == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Payment].
extension PaymentPatterns on Payment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Payment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Payment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Payment value)  $default,){
final _that = this;
switch (_that) {
case _Payment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Payment value)?  $default,){
final _that = this;
switch (_that) {
case _Payment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'reservation_id')  int reservationId, @JsonKey(name: 'payment_method_id')  String paymentMethodId,  String amount,  String status, @JsonKey(name: 'payment_code')  String paymentCode, @JsonKey(name: 'status_label')  String statusLabel, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that.id,_that.reservationId,_that.paymentMethodId,_that.amount,_that.status,_that.paymentCode,_that.statusLabel,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'reservation_id')  int reservationId, @JsonKey(name: 'payment_method_id')  String paymentMethodId,  String amount,  String status, @JsonKey(name: 'payment_code')  String paymentCode, @JsonKey(name: 'status_label')  String statusLabel, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Payment():
return $default(_that.id,_that.reservationId,_that.paymentMethodId,_that.amount,_that.status,_that.paymentCode,_that.statusLabel,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'reservation_id')  int reservationId, @JsonKey(name: 'payment_method_id')  String paymentMethodId,  String amount,  String status, @JsonKey(name: 'payment_code')  String paymentCode, @JsonKey(name: 'status_label')  String statusLabel, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that.id,_that.reservationId,_that.paymentMethodId,_that.amount,_that.status,_that.paymentCode,_that.statusLabel,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Payment implements Payment {
  const _Payment({required this.id, @JsonKey(name: 'reservation_id') required this.reservationId, @JsonKey(name: 'payment_method_id') required this.paymentMethodId, required this.amount, required this.status, @JsonKey(name: 'payment_code') required this.paymentCode, @JsonKey(name: 'status_label') required this.statusLabel, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);

@override final  int id;
@override@JsonKey(name: 'reservation_id') final  int reservationId;
@override@JsonKey(name: 'payment_method_id') final  String paymentMethodId;
@override final  String amount;
@override final  String status;
@override@JsonKey(name: 'payment_code') final  String paymentCode;
@override@JsonKey(name: 'status_label') final  String statusLabel;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentCopyWith<_Payment> get copyWith => __$PaymentCopyWithImpl<_Payment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Payment&&(identical(other.id, id) || other.id == id)&&(identical(other.reservationId, reservationId) || other.reservationId == reservationId)&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reservationId,paymentMethodId,amount,status,paymentCode,statusLabel,createdAt,updatedAt);

@override
String toString() {
  return 'Payment(id: $id, reservationId: $reservationId, paymentMethodId: $paymentMethodId, amount: $amount, status: $status, paymentCode: $paymentCode, statusLabel: $statusLabel, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$PaymentCopyWith(_Payment value, $Res Function(_Payment) _then) = __$PaymentCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'reservation_id') int reservationId,@JsonKey(name: 'payment_method_id') String paymentMethodId, String amount, String status,@JsonKey(name: 'payment_code') String paymentCode,@JsonKey(name: 'status_label') String statusLabel,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class __$PaymentCopyWithImpl<$Res>
    implements _$PaymentCopyWith<$Res> {
  __$PaymentCopyWithImpl(this._self, this._then);

  final _Payment _self;
  final $Res Function(_Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reservationId = null,Object? paymentMethodId = null,Object? amount = null,Object? status = null,Object? paymentCode = null,Object? statusLabel = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Payment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reservationId: null == reservationId ? _self.reservationId : reservationId // ignore: cast_nullable_to_non_nullable
as int,paymentMethodId: null == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paymentCode: null == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
