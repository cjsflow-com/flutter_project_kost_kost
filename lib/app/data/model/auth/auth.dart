
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
abstract class Auth with _$Auth{
  const factory Auth({
    required bool success,
    required String message,
    required String token,
    required Customer customer,
}) = _Auth;

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
}

@freezed
abstract class Customer with _$Customer{
  const factory Customer({
    required int id,
    required String name,
    required String email,
    required String phone,
    required int gender,
    String? address,
    @JsonKey(name: 'created_at') String? created_at,
    @JsonKey(name: 'updated_at') String? updatedAt,
}) = _Customer;
  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);
}