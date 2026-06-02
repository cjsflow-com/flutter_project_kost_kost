// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DataState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DataState<$T>()';
}


}

/// @nodoc
class $DataStateCopyWith<T,$Res>  {
$DataStateCopyWith(DataState<T> _, $Res Function(DataState<T>) __);
}


/// Adds pattern-matching-related methods to [DataState].
extension DataStatePatterns<T> on DataState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DataStateInitial<T> value)?  initial,TResult Function( DataStateLoading<T> value)?  loading,TResult Function( DataStateSuccess<T> value)?  success,TResult Function( DataStateFailed<T> value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DataStateInitial() when initial != null:
return initial(_that);case DataStateLoading() when loading != null:
return loading(_that);case DataStateSuccess() when success != null:
return success(_that);case DataStateFailed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DataStateInitial<T> value)  initial,required TResult Function( DataStateLoading<T> value)  loading,required TResult Function( DataStateSuccess<T> value)  success,required TResult Function( DataStateFailed<T> value)  failed,}){
final _that = this;
switch (_that) {
case DataStateInitial():
return initial(_that);case DataStateLoading():
return loading(_that);case DataStateSuccess():
return success(_that);case DataStateFailed():
return failed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DataStateInitial<T> value)?  initial,TResult? Function( DataStateLoading<T> value)?  loading,TResult? Function( DataStateSuccess<T> value)?  success,TResult? Function( DataStateFailed<T> value)?  failed,}){
final _that = this;
switch (_that) {
case DataStateInitial() when initial != null:
return initial(_that);case DataStateLoading() when loading != null:
return loading(_that);case DataStateSuccess() when success != null:
return success(_that);case DataStateFailed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( String message)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DataStateInitial() when initial != null:
return initial();case DataStateLoading() when loading != null:
return loading();case DataStateSuccess() when success != null:
return success();case DataStateFailed() when failed != null:
return failed(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String message)  failed,}) {final _that = this;
switch (_that) {
case DataStateInitial():
return initial();case DataStateLoading():
return loading();case DataStateSuccess():
return success();case DataStateFailed():
return failed(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String message)?  failed,}) {final _that = this;
switch (_that) {
case DataStateInitial() when initial != null:
return initial();case DataStateLoading() when loading != null:
return loading();case DataStateSuccess() when success != null:
return success();case DataStateFailed() when failed != null:
return failed(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class DataStateInitial<T> implements DataState<T> {
  const DataStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataStateInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DataState<$T>.initial()';
}


}




/// @nodoc


class DataStateLoading<T> implements DataState<T> {
  const DataStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataStateLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DataState<$T>.loading()';
}


}




/// @nodoc


class DataStateSuccess<T> implements DataState<T> {
  const DataStateSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataStateSuccess<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DataState<$T>.success()';
}


}




/// @nodoc


class DataStateFailed<T> implements DataState<T> {
  const DataStateFailed(this.message);
  

 final  String message;

/// Create a copy of DataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataStateFailedCopyWith<T, DataStateFailed<T>> get copyWith => _$DataStateFailedCopyWithImpl<T, DataStateFailed<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataStateFailed<T>&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DataState<$T>.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class $DataStateFailedCopyWith<T,$Res> implements $DataStateCopyWith<T, $Res> {
  factory $DataStateFailedCopyWith(DataStateFailed<T> value, $Res Function(DataStateFailed<T>) _then) = _$DataStateFailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$DataStateFailedCopyWithImpl<T,$Res>
    implements $DataStateFailedCopyWith<T, $Res> {
  _$DataStateFailedCopyWithImpl(this._self, this._then);

  final DataStateFailed<T> _self;
  final $Res Function(DataStateFailed<T>) _then;

/// Create a copy of DataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(DataStateFailed<T>(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
