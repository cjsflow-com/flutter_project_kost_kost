
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method.freezed.dart';
part 'payment_method.g.dart';

@freezed
abstract class PaymentMethodResponse with _$PaymentMethodResponse{
  const factory PaymentMethodResponse({
    required bool success,
    required String message,
    required List<PaymentMethod> data,
}) = _PaymentMethodResponse;

  factory PaymentMethodResponse.fromJson(Map<String, dynamic> json) => _$PaymentMethodResponseFromJson(json);
}

@freezed
abstract class PaymentMethod with _$PaymentMethod{
  const factory PaymentMethod({
    required int id,
    required String name,
    required String type,
    String? provider,

    @JsonKey(name: 'account_number')
    String? accountNumber,

    @JsonKey(name: 'account_name')
    String? accountName,

    @JsonKey(name: 'is_active')
    required int isActive,

    @JsonKey(name: 'type_name')
    required String typeName,
  }) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String,dynamic> json) => _$PaymentMethodFromJson(json);
}
