import 'package:rimbun_cicio_kost/app/data/model/payment/payment.dart';
import 'package:rimbun_cicio_kost/app/data/model/payment/payment_method.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

abstract class PaymentRepository {
  Future<DataState<PaymentMethodResponse>> getPaymentMethod();

  Future<DataState<CreatePaymentResponse>> createPayment(int reservationId, int paymentMethodId, int amount);
}